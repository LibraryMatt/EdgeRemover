# Specify the path to the Edge shortcut on the desktop 
$shortcutPath = [System.IO.Path]::Combine($env:USERPROFILE, 'Desktop', 'Microsoft Edge.lnk')

# Check if the shortcut exists before attempting to delete
if (Test-Path $shortcutPath) {
    # Delete the Edge shortcut
    Remove-Item $shortcutPath -Force
    Write-Host "Edge shortcut deleted successfully."
} else {
    Write-Host "Edge shortcut not found on the desktop."
}
