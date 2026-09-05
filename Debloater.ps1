$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Start-Process powershell -Verb RunAs -ArgumentList "-File `"$PSCommandPath`""
    exit
}

Write-Host "[ATTENTION]: THE SCREEN MAY GO DARK FOR A FEW SECONDS TO ALLOW CHANGES TO TAKE EFFECT AUTOMATICALLY!" -ForegroundColor Red
Write-Host "Update Winget sources..." -ForegroundColor Cyan
winget source update
Write-Host "Successfully updated winget sources." -ForegroundColor Green

$answer1 = Read-Host "Would you like to uninstall the Get Help app? [y/N]"
if ($answer1 -match "y") {
    winget uninstall --id Microsoft.GetHelp_8wekyb3d8bbwe 2>$null
    Write-Host "Ssuccessfully uninstalled the Get Help app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Get Help app." -ForegroundColor Yellow
}

$answer2 = Read-Host "Would you like to uninstall the Windows Journal app? [y/N]"
if ($answer2 -match "y") {
    Get-AppxPackage *MicrosoftJournal* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled the Windows Journal app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Journal app." -ForegroundColor Yellow
}

$answer3 = Read-Host "Would you like to uninstall the Feedback Hub app? [y/N]"
if ($answer3 -match "y") {
    winget uninstall --id Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the Feedback Hub app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the FeedBack Hub app." -ForegroundColor Yellow
}

$answer4 = Read-Host "Would you like to uninstall the Candy Crush game? [y/N]"
if ($answer4 -match "y") {
    Get-AppxPackage *CandyCrush* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Candy Crush." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Candy Crush app." -ForegroundColor Yellow
}

$answer5 = Read-Host "Would you like to uninstall WSL (Windows Subsystem for Linux)? [y/N]"
if ($answer5 -match "y") {
    dism /online /disable-feature /featurename:Windows-Subsystem-for-Linux /all 2>$null
    Write-Host "Successfully uninstalled WSL (Windows Subsystem for Linux)." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling WSL (Windows Subsystem for Linux)." -ForegroundColor Yellow
}

$answer6 = Read-Host "Would you like to uninstall the Bing Speedtest app? [y/N]"
if ($answer6 -match "y") {
    Get-AppxPackage *Speedtest* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Bing SpeedTest." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing Speedtest app." -ForegroundColor Yellow
}

$answer7 = Read-Host "Would you like to uninstall the McAfee antivirus? [y/N]"
if ($answer7 -match "y") {
    winget uninstall --name "McAfee" 2>$null
    Write-Host "Successfully uninstalled the McAfee antivirus." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the McAfee antivirus." -ForegroundColor Yellow
}

$answer8 = Read-Host Would you like to uninstall the Norton antivirus? [y/N]"
if ($answer8 -match "y") {
    winget uninstall --name "Norton" 2>$null
    Write-Host "Norton antivirus was successfully uninstalled." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Norton antivirus." -ForegroundColor Yellow
}

$answer9 = Read-Host "Would you like to uninstall the Dev Home app? [y/N]"
if ($answer9 -match "y") {
    winget uninstall --id Microsoft.DevHome_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the Dev Home app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Dev Home app." -ForegroundColor Yellow
}

$answer10 = Read-Host "Would you like to uninstall the PowerShell 2.0 app? [y/N]"
if ($answer10 -match "y") {
    dism /Online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /NoRestart 2>$null
    Write-Host "Successfully uninstalled PowerShell 2.0." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling PowerShell 2.0." -ForegroundColor Yellow
}

$answer11 = Read-Host "Would you like to uninstall the To Do app? [y/N]"
if ($answer11 -match "y") {
    winget uninstall --id Microsoft.Todos_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled To Do." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the To Do app." -ForegroundColor Yellow
}

$answer12 = Read-Host "Would you like to uninstall the Movies and TV/ZuneVideo app? [y/N]"
if ($answer12 -match "y") {
    winget uninstall --id Microsoft.ZuneVideo_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Movies and TV/ZuneVideo." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Movies and TV/ZuneVideo app." -ForegroundColor Yellow
}

$answer13 = Read-Host "Would you like to uninstall the Bing weather app? [y/N]"
if ($answer13 -match "y") {
    winget uninstall --id Microsoft.BingWeather_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Bing weather." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing weather app." -ForegroundColor Yellow
}

$answer14 = Read-Host "Would you like to uninstall the Bing News app? [y/N]"
if ($answer14 -match "y") {
    winget uninstall --id Microsoft.BingNews_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Bing News." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing News app." -ForegroundColor Yellow
}

$answer15 = Read-Host "Would you like to uninstall the Bing Sports app? [y/N]"
if ($answer15 -match "y") {
    winget uninstall --id Microsoft.BingSports_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Bing Sports." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing Sports app." -ForegroundColor Yellow
}

$answer16 = Read-Host "Would you like to unninstall the Bing Finance app? [y/N]"
if ($answer16 -match "y") {
    winget uninstall --id Microsoft.BingFinance_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Bing Finance." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing Finance app." -ForegroundColor Yellow
}

$answer17 = Read-Host "Would you like to uninstall the Skype app? [y/N]"
if ($answer17 -match "y") {
    winget uninstall --id Microsoft.SkypeApp_kzf8qxf38zg5c 2>$null
    Write-Host "Successfully uninstalled Skype." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Skype app." -ForegroundColor Yellow
}

$answer18 = Read-Host "Would you like to uninstall the Sound Recorder/Voice Recorder app? [y/N]"
if ($answer18 -match "y") {
    winget uninstall --id Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Sound Recorder/Voice Recorder." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Sound Recorder/Voice Recorder app." -ForegroundColor Yellow
}

$answer19 = Read-Host "Would you like to uninstall the Paint3D app? [y/N]"
if ($answer19 -match "y") {
    winget uninstall --id Microsoft.MSPaint3D_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Paint 3D." -ForegroundColor Green
} else {
    Write-Host You cancelled uninstalling the Paint3D app." -ForegroundColor Yellow
}

$answer20 = Read-Host "Would you like to uninstall the Cortana app? [y/N]"
if ($answer20 -match "y") {
    winget uninstall --id Microsoft.549981C32F101_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Cortana." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Cortana app." -ForegroundColor Yellow
}

$answer21 = Read-Host "Would you like to uninstall the XBOX console comapnion app? [y/N]"
if ($answer21 -match "y") {
    winget uninstall --id Microsoft.XboxApp_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled XBOX Console Companion." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the XBOX Console Companion app." -ForegroundColor Yellow
}

$answer22 = Read-Host "Would you like to uninstall the Copilot app completely from everywhere? (It might be difficult to reinstall this app.) [y/N]"
if ($answer22 -match "y") {

Write-Host "Uninstalling the Copilot app..." -ForegroundColor Cyan
Get-AppxPackage -AllUsers | Where-Object Name -like "*Copilot*" |
    ForEach-Object { Remove-AppxPackage -Package $_.PackageFullName -AllUsers -ErrorAction SilentlyContinue }
Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*Copilot*" |
    ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $_.PackageName -ErrorAction SilentlyContinue }
Write-Host "Successfully uninstalled Copilot app." -ForegroundColor Green


Write-Host "Turning off OS-Built-in Copilot buttons..." -ForegroundColor Cyan
$paths = @(
    "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot",
    "HKCU:\Software\Policies\Microsoft\Windows\WindowsCopilot"
)
foreach ($p in $paths) {
    New-Item -Path $p -Force | Out-Null
    Set-ItemProperty -Path $p -Name "TurnOffWindowsCopilot" -Value 1 -Type DWord
}
Write-Host "Successfully turned off OS-Built-in Copilot buttons." -ForegroundColor Green


Write-Host "uninstalling Copilot and AI functions from Notepad..." -ForegroundColor Cyan
New-Item -Path "HKLM:\SOFTWARE\Policies\WindowsNotepad" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\WindowsNotepad" -Name "DisableAIFeatures" -Value 1 -Type DWord
Write-Host "Successfully uninstalled Copilot and AI functions from Notepad." -ForegroundColor Green


Write-Host "uninstalling Copilot from Windows Explorer..." -ForegroundColor Cyan
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideAIActionsMenu" -Value 1 -Type DWord
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCopilotButton" -PropertyType DWord -Value 0 -Force | Out-Null
Write-Host "Successfully uninstalled Copilot from Windows File Explorer." -ForegroundColor Green


Write-Host "uninstalling Copilot from Windows Search..." -ForegroundColor Cyan
$searchPaths = @(
    "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer",
    "HKCU:\Software\Policies\Microsoft\Windows\Explorer"
)
foreach ($p in $searchPaths) {
    New-Item -Path $p -Force | Out-Null
    Set-ItemProperty -Path $p -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWord
}
Write-Host "Successfully uninstalled Copilot from Windows Search." -ForegroundColor Green


Write-Host "uninstalling Click To Do, and Copilot/AI from Snipping tool..." -ForegroundColor Cyan
$ctdPaths = @(
    "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI",
    "HKCU:\Software\Policies\Microsoft\Windows\WindowsAI"
)
foreach ($p in $ctdPaths) {
    New-Item -Path $p -Force | Out-Null
    Set-ItemProperty -Path $p -Name "DisableClickToDo" -Value 1 -Type DWord
}
Write-Host "Successfully uninstalled Click To Do, Copilot, and AI from Snipping Tool." -ForegroundColor Green


Write-Host "Restarting explorer.exe..."
Stop-Process -Name explorer -Force; Start-Process explorer.exe
Write-Host "Successfully uninstalled Copilot." -ForegroundColor Green

} else {
    Write-Host "You cancelled uninstalling the Copilot app." -ForegroundColor Yellow
}

$answer23 = Read-Host "Would you like to uninstall the Microsoft Wallet app? [y/N]"
if ($answer23 -match "y") {
    winget uninstall --id Microsoft.Wallet_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Microsoft Wallet." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing Wallet app." -ForegroundColor Yellow
}

$answer24 = Read-Host "Would you like to uninstall the Sticky Notes Legacy (Cetlik) app? [y/N]"
if ($answer24 -match "y") {
    winget uninstall --id Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Sticky Notes Legacy (Cetlik)." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Sticky Notes Legacy (Cetlik) app." -ForegroundColor Yellow
}

$answer25 = Read-Host "Would you like to uninstall the 3D Viewer app? [y/N]"
if ($answer25 -match "y") {
    winget uninstall --id Microsoft.Microsoft3DViewer_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled 3D Viewer." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the 3D Viewer app." -ForegroundColor Yellow
}

$answer26 = Read-Host "Would you like to uninstall the Microsoft Solitare Collection and Casual Games/Solitare app? [y/N]"
if ($answer26 -match "y") {
    winget uninstall --id Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Microsoft Solitare Collection and Casual Games/Solitare." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Microsoft Solitare Collection and Casual Games/Solitare app." -ForegroundColor Yellow
}

$answer27 = Read-Host "Would you like to uninstall the People app? [y/N]"
if ($answer27 -match "y") {
    winget uninstall --id Microsoft.People_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the People app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the People app." -ForegroundColor Yellow
}

$answer28 = Read-Host "Would you like to uninstall the Mixed Reality Portal/Mixed Reality app? [y/N]"
if ($answer28 -match "y") {
    winget uninstall --id Microsoft.MixedReality.Portal_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Mixed Reality/Mixed Reality Portal." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Mixed Reality Portal app." -ForegroundColor Yellow
}

$answer29 = Read-Host "Would you like to uninstall the Windows Maps app? [y/N]"
if ($answer29 -match "y") {
    winget uninstall --id Microsoft.WindowsMaps_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Windows Maps." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Maps app." -ForegroundColor Yellow
}

$answer30 = Read-Host "Would you like to uninstall the Tips app? (Not the new Get Started app) [y/N]"
if ($answer30 -match "y") {
    winget uninstall --id Microsoft.Getstarted_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the Tips app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Tips/Get started app." -ForegroundColor Yellow
}

$answer31 = Read-Host "Would you like to uninstall the Microsoft Family app? (Note that uninstalling this don't disable Parental Controls) [y/N]"
if ($answer31 -match "y") {
    winget uninstall --id Microsoft.Family_8wekyb3d8bbwe 2>$null
    Write-Host "Microsoft Family was successfully uninstalled." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Microsoft Family app." -ForegroundColor Yellow
}

$answer32 = Read-Host "Would you like to uninstall the Clipchamp app? [y/N]"
if ($answer32 -match "y") {
    winget uninstall --id Microsoft.Clipchamp.Clipchamp_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Clipchamp." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Clipchamp app." -ForegroundColor Yellow
}

$answer33 = Read-Host "Would you like to uninstall the Windows Camera app? [y/N]"
if ($answer33 -match "y") {
    winget uninstall --id Microsoft.WindowsCamera_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Windows Camera." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Camera app." -ForegroundColor Yellow
}

$answer34 = Read-Host "Would you like to uninstall the Steps Recorder app? [y/N]"
if ($answer34 -match "y") {
    dism /Online /Disable-Feature /FeatureName:Microsoft-Windows-StepsRecorder /NoRestart 2>$null
    Write-Host "Successfully uninstalled Steps Recorder." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Steps Recorder app." -ForegroundColor Yellow
}

$answer35 = Read-Host "Would you like to uninstall the Math Input Panel app? [y/N]"
if ($answer35 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "MathInputPanel" -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled Math Input Panel." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Math Input Panel app." -ForegroundColor Yellow
}

$answer36 = Read-Host "Would you like to uninstall the Fax and Scan app? [y/N]"
if ($answer36 -match "y") {
    Get-WindowsCapability -Name *Fax* -Online | Remove-WindowsCapability -Online 2>$null
    dism /Online /Disable-Feature /FeatureName:FaxServicesClientPackage /NoRestart 2>$null
    Write-Host "Successfully uninstalled Fax and Scan." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Fax and Scan app." -ForegroundColor Yellow
}

$answer37 = Read-Host "Would you like to uninstall the Phone Link/Your Phone app? [y/N]"
if ($answer37 -match "y") {
    winget uninstall --id Microsoft.YourPhone_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Phone Link/Your Phone." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Phone Link/Your Phone app." -ForegroundColor Yellow
}

$answer38 = Read-Host "Would you like to uninstall the Windows PowerShell ISE app? [y/N]"
if ($answer38 -match "y") {
    Uninstall-WindowsCapability -Online -Name "Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0" -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled Windows PowerShell ISE." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows PowerShell ISE app." -ForegroundColor Yellow
}

$answer39 = Read-Host "Would you like to uninstall the Windows Notepad app? [y/N]"
if ($answer39 -match "y") {
    Get-AppxPackage -Name "*WindowsNotepad*" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Uninstall-WindowsCapability -Online -Name "Microsoft.Windows.Notepad~~~~0.0.1.0" 2>$null
    Write-Host "Successfully uninstalled Windows Notepad." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Notepad app." -ForegroundColor Yellow
}

$answer40 = Read-Host "Would you like to uninstall the Character Map app? [y/N]"
if ($answer40 -match "y") {
    Uninstall-WindowsCapability -Online -Name "OneCore.CharMap~~~~0.0.1.0" -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled Character Map." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Character Map app." -ForegroundColor Yellow
}

$answer41 = Read-Host "Would you like to uninstall the Windows Media Player Legacy app? [y/N]"
if ($answer41 -match "y") {
    Uninstall-WindowsCapability -Online -Name "Media.WindowsMediaPlayer~~~~0.0.12.0" -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled Windows Media Player Legacy.." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Media Player Legacy app." -ForegroundColor Yellow
}

$answer42 = Read-Host "Would you like to uninstall the Remote Desktop Connection app? [y/N]"
if ($answer42 -match "y") {
    Get-AppxPackage -Name "*RemoteDesktop*" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Write-Host "Successfully uninstalled the Remote Desktop Connection app." -ForegroundColor Green
    Write-Host "[NOTE]: The RDP services does not turned off by this script, just the Windows built-in RDP app got uninstalled." -ForegroundColor Red
} else {
    Write-Host "Megszakítottad a Távoli asztali kapcsolat alkalmazás törlését. You cancelled uninstalling the Remote Desktop Connection app." -ForegroundColor Yellow
}

$answer43 = Read-Host "Would you like to uninstall the 3D Builder app? [y/N]"
if ($answer43 -match "y") {
    Get-AppxPackage *3dbuilder* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled 3D Builder." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the 3D Builder app." -ForegroundColor Yellow
}

$answer44 = Read-Host "Would you like to uninstall the Power Automate app? [y/N]"
if ($answer44 -match "y") {
    Get-AppxPackage *PowerAutomateDesktop* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Power Automate." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Power Automate app." -ForegroundColor Yellow
}

$answer45 = Read-Host "Would you like to uninstall the OneNote app? [y/N]"
if ($answer45 -match "y") {
    Get-AppxPackage *OneNote* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled OneNote." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the OneNOte app." -ForegroundColor Yellow
}

$answer46 = Read-Host "Would you like to uninstall the OneDrive/SkyDrive app? [y/N]"
if ($answer46 -match "y") {
    Get-AppxPackage *OneDrive* | Remove-AppxPackage 2>$null
    winget uninstall --name "OneDrive" 2>$null
    Write-Host "Successfully uninstalled OneDrive/SkyDrive." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the OneDrive/SkyDrive app." -ForegroundColor Yellow
}

$answer47 = Read-Host "Would you like to uninstall the Mail and Calendar apps? [y/N]"
if ($answer47 -match "y") {
    Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage 2>$null
    winget uninstall --id "9WZDNCRFHVJL" 2>$null
    Write-Host "Successfully uninstalled Mail and Calendar." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Mail and Calendar apps." -ForegroundColor Yellow
}

$answer48 = Read-Host "Would you like to uninstall the 3D printing service? [y/N]"
if ($answer48 -match "y") {
    Get-AppxPackage *print3d* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled the 3D printing service." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the 3D printing service." -ForegroundColor Yellow
}

$answer49 = Read-Host "Would you like to uninstall the Paint app? [y/N]"
if ($answer49 -match "y") {
    winget uninstall --id Microsoft.Paint_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Paint." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Paint app." -ForegroundColor Yellow
}

$answer50 = Read-Host "Would you like to uninstall the Microsoft Teams app? [y/N]"
if ($answer50 -match "y") {
    winget uninstall --id Microsoft.Teams_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Microsoft Teams." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Microsoft Teams app." -ForegroundColor Yellow
}

$answer51 = Read-Host "Would you like to uninstall the XBOX Identity Provider app? [y/N]"
if ($answer51 -match "y") {
    winget uninstall --id Microsoft.XboxIdentityProvider_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled XBOX Identity Provider." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the XBOX Identity Provider app." -ForegroundColor Yellow
}

$answer52 = Read-Host "Would you like to uninstall the XBOX app? [y/N]"
if ($answer52 -match "y") {
    winget uninstall --id Microsoft.GamingApp_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the XBOX app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the XBOX app." -ForegroundColor Yellow
}

$answer53 = Read-Host "Would you like to uninstall the XBOX Game Bar app? [y/N]"
if ($answer53 -match "y") {
    winget uninstall --id Microsoft.XboxGameOverlay_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled XBOX Game Bar." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the XBOX Game Bar app." -ForegroundColor Yellow
}

$answer54 = Read-Host "Would you like to uninstall the Outlook (new) app? [y/N]"
if ($answer54 -match "y") {
    winget uninstall --id Microsoft.OutlookForWindows_8wekyb3d8bbwe 2>$null
    Get-AppxPackage *Microsoft.OutlookForWindows* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Outlook (new)." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Outlook (new) app." -ForegroundColor Yellow
}

$answer55 = Read-Host "Would you like to uninstall the Clock/Alarms and Clock app? [y/N]"
if ($answer55 -match "y") {
    winget uninstall --id Microsoft.WindowsAlarms_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Clock/Alarms and Clock." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Clock/Alarms and Clock app." -ForegroundColor Yellow
}

$answer56 = Read-Host "Would you like to uninstall the Quick Assist app? [y/N]"
if ($answer56 -match "y") {
    winget uninstall --id Microsoft.QuickAssist_8wekyb3d8bbwe 2>$null
    Write-Host "Ssuccessfully uninstalled Quick Assist." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Quick Assist app." -ForegroundColor Yellow
}

$answer57 = Read-Host "Would you like to uninstall the Internet Explorer app? [y/N] (Not recommended - BE CAREFUL WITH THIS!)"
if ($answer57 -match "y") {
    Get-WindowsCapability -Online -Name "Browser.InternetExplorer~~~~0.0.11.0" -ErrorAction SilentlyContinue | Remove-WindowsCapability -Online -ErrorAction SilentlyContinue 2>$null
    Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-amd64" -NoRestart -ErrorAction SilentlyContinue 2>$null
    Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-x86" -NoRestart -ErrorAction SilentlyContinue 2>$null
    $iePackages = @("Microsoft-Windows-InternetExplorer-Optional-Package", "InternetExplorer-Optional-Package")
    foreach ($pkg in $iePackages) {
        dism /Online /Disable-Feature /FeatureName:$pkg /NoRestart 2>$null
    }
    Start-Process wusa.exe -ArgumentList "/uninstall /kb:956390 /quiet /norestart" -Wait 2>$null
    Write-Host "Successfully uninstalled Internet Explorer." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling Internet Explorer." -ForegroundColor Yellow
}

$answer58 = Read-Host "Would you like to uninstall the XPS Viewer app? (You are still able to open .xps files with Word if you uninstall this.) [y/N]"
if ($answer58 -match "y") {
    winget uninstall --id Microsoft.XPSViewer_8wekyb3d8bbwe 2>$null
    dism /online /disable-feature /featurename:XPS.Viewer /norestart 2>$null
    Write-Host "Successfully uninstalled XPS Viewer." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the XPS Viewer app." -ForegroundColor Yellow
}

$answer59 = Read-Host "Would you like to uninstall the Calculator app? [y/N]"
if ($answer59 -match "y") {
    winget uninstall --id Microsoft.WindowsCalculator_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled calculator." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Calculator app." -ForegroundColor Yellow
}

$answer60 = Read-Host "Would you like to uninstall the Document Reader/Reader app? [y/N]"
if ($answer60 -match "y") {
    Get-AppxPackage *reader* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Document Reader/Reader." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Document Reader/Reader app." -ForegroundColor Yellow
}

$answer61 = Read-Host "Would you like to uninstall the Bing Gastronomy app? [y/N]"
if ($answer61 -match "y") {
    Get-AppxPackage *foodanddrink* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Bing Gastronomy." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing Gastronomy app." -ForegroundColor Yellow
}

$answer62 = Read-Host "Would you like to uninstall the Bing Health & Fitness app? [y/N]"
if ($answer62 -match "y") {
    Get-AppxPackage *healthandfitness* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Bing Health & Fitness." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing Health & Fitness app." -ForegroundColor Yellow
}

$answer63 = Read-Host "Would you like to uninstall the Bing Travel app? [y/N]"
if ($answer63 -match "y") {
    Get-AppxPackage *travel* | Remove-AppxPackage 2>$null
    Write-Host "Successfully uninstalled Bing Travel." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Bing travel app." -ForegroundColor Yellow
}

$answer64 = Read-Host "Would you like to uninstall the Wordpad app? [y/N]"
if ($answer64 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-WordPad" -NoRestart -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled Wordpad." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Wordpad app." -ForegroundColor Yellow
}

$answer65 = Read-Host "Would you like to uninstall the Printing Service? [y/N]"
if ($answer65 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "Printing-Foundation-Features" -NoRestart -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled the Printing Service." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Printing Service." -ForegroundColor Yellow
}

$answer66 = Read-Host "Would you like to uninstall the Touch Screen Service? [y/N]"
if ($answer66 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "TabletPCOptionalComponents" -NoRestart -ErrorAction SilentlyContinue
    Write-Host "Successfully uninstalled the Touch Screen Service." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Touch Screen service." -ForegroundColor Yellow
}

$answer67 = Read-Host "Would you like to uninstall the Microsoft 365 Copilot (Office)/Microsoft 365 Office and Microsoft Office apps? [y/N]"
if ($answer67 -match "y") {
    Get-Package -Name "*Microsoft 365*" 2>$null | Uninstall-Package 2>$null
    Get-AppxPackage -Name "*Microsoft.Office.Desktop*" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-Package -Name "*Microsoft Office*" 2>$null | Where-Object { $_.Version -like "16.*" -or $_.Name -like "*2019*" -or $_.Name -like "*2022*" } 2>$null | Uninstall-Package 2>$null
    Get-Package -Name "*Microsoft Office * 2013*" 2>$null | Uninstall-Package 2>$null
    Get-CimInstance -ClassName Win32_Product 2>$null | Where-Object { $_.Name -like "*Microsoft Office * 2013*" } 2>$null | Invoke-CimMethod -MethodName Uninstall 2>$null
    Write-Host "Successfully uninstalled Microsoft 365 Copilot (Office)/Microsoft 365 Office and Microsoft Office apps." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Microsoft 365 Copilot (Office)/Microsoft 365 Office and Microsoft Office apps." -ForegroundColor Yellow
}

$answer68 = Read-Host "Would you like to uninstall the Minecraft games? [y/N]"
if ($answer68 -match "y") {
    Get-Package -Name "*Minecraft*" 2>$null | Where-Object { $_.ProviderName -eq "msi" -or $_.Name -like "*Java*" } | Uninstall-Package 2>$null
    Get-AppxPackage -Name "Microsoft.MinecraftUWP" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-AppxPackage -Name "Microsoft.MinecraftEducationEdition" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-Package -Name "*Minecraft Education*" 2>$null | Uninstall-Package 2>$null
    Get-AppxPackage -Name "Microsoft.MinecraftWindowsBeta" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-AppxPackage -Name "Microsoft.4294967296MinecraftLauncher" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-Package -Name "*Minecraft Launcher*" 2>$null | Uninstall-Package 2>$null
    Write-Host "Successfully uninstalled Minecraft games." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Minecraft games." -ForegroundColor Yellow
}

$answer69 = Read-Host "Would you like to uninstall the Photos app? [y/N]"
if ($answer69 -match "y") {
    winget uninstall --id Microsoft.Windows.Photos_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the Photos app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Microsoft Photos app." -ForegroundColor Yellow
}

$answer70 = Read-Host "Would you like to uninstall the Snipping Tool/Snip & Sketch app? [y/N]"
if ($answer70 -match "y") {
    winget uninstall --id Microsoft.ScreenSketch_8wekyb3d8bbwe 2>$null
    Get-WindowsCapability -Online -Name "Microsoft.Windows.SnippingTool~~~~0.0.1.0" 2>$null | Remove-WindowsCapability -Online 2>$null
    Write-Host "Successfully uninstalled Snipping Tool/Snip & Sketch." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Snipping Tool/Snip & Sketch app." -ForegroundColor Yellow
}

$answer71 = Read-Host "Would you like to uninstall the Windows Terminal app? [y/N]"
if ($answer71 -match "y") {
    winget uninstall --id Microsoft.WindowsTerminal_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled Windows Terminal." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Terminal app." -ForegroundColor Yellow
}

$answer72 = Read-Host "Would you like to uninstall the Microsoft Edge browser? [y/N]"
if ($answer72 -match "y") {
    winget uninstall --id Microsoft.Edge 2>$null
    Write-Host "Successfully uninstalled Microsoft Edge." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Microsoft Edge browser." -ForegroundColor Yellow
}

$answer73 = Read-Host "Would you like to uninstall the Windows Media Player (New)/Zune Music/Groove Music app? [y/N]"
if ($answer73 -match "y") {
    winget uninstall --id Microsoft.ZuneMusic_8wekyb3d8bbwe 2>$null
    Write-Host "Successfully uninstalled the Windows Media Player (New)/Zune Music/Groove Music app." -ForegroundColor Green
} else {
    Write-Host "You cancelled uninstalling the Windows Media Player (New)/Zune Music/Groove Music app." -ForegroundColor Yellow
}

Write-Host "We're done! A reboot is recommended!" -ForegroundColor Cyan

Write-Host "Do you want to reboot your computer?"
$question = Read-Host "[y/N]"
    if ($question -match "y") {
        Write-Host "Rebooting in 10 seconds..." -ForegroundColor Red
        shutdown -r -t 10
    }
    else {
        Write-Host "You cancelled rebooting your PC. Please reboot manually, to finish all modifications."
    }
pause
