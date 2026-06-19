#requires -Version 5.1
<# Created by Dewald Pretorius #>
param([string]$OutputPath)
if(-not $OutputPath){$OutputPath="$([Environment]::GetFolderPath('Desktop'))\Microsoft_Lists_Reports"};New-Item $OutputPath -ItemType Directory -Force|Out-Null
$targets='lists.microsoft.com','login.microsoftonline.com','graph.microsoft.com';$net=foreach($t in $targets){[pscustomobject]@{Target=$t;DNS=[bool](Resolve-DnsName $t -ErrorAction SilentlyContinue);HTTPS443=(Test-NetConnection $t -Port 443 -InformationLevel Quiet -WarningAction SilentlyContinue)}}
@('MICROSOFT LISTS FORMATTING AND AUTOMATION TROUBLESHOOTER','Created by Dewald Pretorius',"Generated: $(Get-Date)",($net|Format-Table -AutoSize|Out-String -Width 220),'Guidance: validate JSON formatting, column types, view filters, permissions, list thresholds, rules, Power Automate connections, and SharePoint site access.')|Set-Content (Join-Path $OutputPath 'Report.txt') -Encoding UTF8