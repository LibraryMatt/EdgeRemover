# Get the current user's profile path
$currentProfile = [System.IO.Path]::Combine($env:USERPROFILE)

# Define the path to the Edge shortcut in the AllUsers desktop folder
$shortcutPath = [System.IO.Path]::Combine($env:PUBLIC, 'Desktop', 'Microsoft Edge.lnk')

# Check if the shortcut exists before attempting to delete
if (Test-Path $shortcutPath) {
    # Delete the Edge shortcut
    Remove-Item $shortcutPath -Force
    Write-Host "Edge shortcut deleted successfully."
} else {
    Write-Host "Edge shortcut not found on the desktop."
}
