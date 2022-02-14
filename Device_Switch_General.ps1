$idSpeaker = "YOUR DEVICE ID"
$idHeadphones = "YOUR DEVICE ID"

Function Notificiation([string]$name) {

    Add-Type -AssemblyName System.Windows.Forms
$global:balmsg = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info
$balmsg.BalloonTipText = "Switched Audio device to " + $name
$balmsg.BalloonTipTitle = "Audio Device Switch"
$balmsg.Visible = $true
$balmsg.ShowBalloonTip(2000)
    
}


if((Get-AudioDevice -List | where {($_.Default -eq $true) -and ($_.Type -like "Playback") -and ($_.ID -like $idSpeaker )}).Default -like "true") {
    # Switch to Speaker
    Set-AudioDevice -ID $idHeadphones -Verbose | Out-Null
    Notificiation("speaker")

} elseif((Get-AudioDevice -List | where {($_.Default -eq $true) -and ($_.Type -like "Playback") -and ($_.ID -like $idHeadphones )}).Default -like "true") {
    # Switch to Headset
    Set-AudioDevice -ID $idSpeaker -Verbose | Out-Null
    Notificiation("headphones")
}
