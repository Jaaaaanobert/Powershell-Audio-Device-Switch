$idSpeaker = "{0.0.0.00000000}.{6eb60296-bf16-4c6e-aa23-524a5d6d2949}"
$idHeadphones = "{0.0.0.00000000}.{a7b74d86-6712-4ea9-901a-8dd769abbee7}"

if((Get-AudioDevice -List | where {($_.Default -eq $true) -and ($_.Type -like "Playback") -and ($_.ID -like $idSpeaker )}).Default -like "true") {
    # Switch to Speaker
    Set-AudioDevice -ID $idHeadphones -Verbose | Out-Null
} elseif((Get-AudioDevice -List | where {($_.Default -eq $true) -and ($_.Type -like "Playback") -and ($_.ID -like $idHeadphones )}).Default -like "true") {
    # Switch to Headset
    Set-AudioDevice -ID $idSpeaker -Verbose | Out-Null
}