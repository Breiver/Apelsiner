param (
[parameter(mandatory = $true)]
[ValidateNotNullOrEmpty()] 
[string]
$str
)
$myHT = [ordered]@{}
$str.split() | Group-Object | ForEach-Object {$myHT.$($_.Name) = $($_.Count)}
$myHT