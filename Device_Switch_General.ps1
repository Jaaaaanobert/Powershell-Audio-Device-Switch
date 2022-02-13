$idSpeaker = "YOUR SPEAKER-ID"
$idHeadphones = "YOUR HEADHONE-ID"

if((Get-AudioDevice -List | where {($_.Default -eq $true) -and ($_.Type -like "Playback") -and ($_.ID -like $idSpeaker )}).Default -like "true") {
    # Switch to Speaker
    Set-AudioDevice -ID $idHeadphones -Verbose | Out-Null
} elseif((Get-AudioDevice -List | where {($_.Default -eq $true) -and ($_.Type -like "Playback") -and ($_.ID -like $idHeadphones )}).Default -like "true") {
    # Switch to Headset
    Set-AudioDevice -ID $idSpeaker -Verbose | Out-Null
}