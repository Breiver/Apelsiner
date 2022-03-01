param (
[parameter(mandatory = $true)]
[ValidateNotNullOrEmpty()] 
[string]
$str
)
$str.split() | Group-Object | Sort-Object -property "Count" -Descending | ForEach-Object {Write-Host "$($_.Name)" - "$($_.Count)"}