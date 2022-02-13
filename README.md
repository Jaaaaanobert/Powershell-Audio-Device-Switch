# Description
This is a little PowerShell script that can switch your default Playback device on Windows

# Installation
The AudioDeviceCmdlets is needed.
https://github.com/frgnca/AudioDeviceCmdlets

To get your device ID, run the PowerShell as Administrator and type: *Get-AudioDevice -List*
Copy the ID's of your playback devices between which you want to switch and put them into the shell file in the variables *idSpeaker* and *idHeadphones*

# Use as Macro
You can run this script i.E. by creating a shortcut like:

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden "C:\Tools\Playback_Switch\Device_Switch.ps1"

It is also possible to bind this on a shortcut of your Keyboard, i.e., in the iCue-Software.

To use this in the iCue software you have to create a batch-file with the referred command and select it as program which should be run by pressing your key

# Additional Info
I am not really familiar with PowerShell, there may be a better or cleaner solution to switch between the devices.
I just want to save somebody who may have the same idea to create his own script.
