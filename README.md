# Microsoft Lists Formatting and Automation Troubleshooter

Created by **Dewald Pretorius**.

`Troubleshooter.ps1` collects view, JSON-formatting, rule, automation, permission, and data evidence. `Repair.ps1` adds guarded `Diagnose`, `ResetClientCache`, and `FlushDns` actions.

```powershell
.\Repair.ps1 -Action Diagnose
.\Repair.ps1 -Action ResetClientCache -WhatIf
.\Repair.ps1 -Action ResetClientCache -Confirm
```

Close Edge and Teams before cache repair. Existing client caches are preserved as timestamped backups. Each run saves pre-change evidence and a log. Source-reviewed for PowerShell 5.1; not runtime-tested against every Microsoft Lists or Power Automate configuration.
