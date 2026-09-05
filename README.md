# Interactive-Windows-Debloater

You can uninstall almost every app that can be pre-installed on any Windows 8/8.1/10/11 machine. This script don't have a GUI yet, you need to run this with Windows PowerShell or PowerShell 7 (recommended)

## How to use?
Start Windows PowerShell or PowerShell 7 (recommended) as administrator. Then type this: "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser -Force", and then press enter. Then change the directory to the folder where you downloaded my script (like if you downloaded to the Download folder then type this: "cd $env:USERPROFILE\Downloads", and then press enter again). Then type this: "./Debloater.ps1", and answer the questions. If you finished, then open another admin PowerShell, and type these: "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force", and then press enter again.
