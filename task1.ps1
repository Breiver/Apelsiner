
"CPU 0-5:"
$mostcpuprocfull = Get-Process | Sort-Object CPU -Descending | Select-Object ProcessName, Id, CPU
foreach ($cpuprocfull in $mostcpuprocfull[0..5]) {Write-Host $cpuprocfull.ProcessName, $cpuprocfull.Id, $cpuprocfull.CPU -Separator " - "}
