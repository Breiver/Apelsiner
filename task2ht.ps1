param (
[parameter(mandatory = $true)]
[ValidateNotNullOrEmpty()] 
[string]
$str
)
$myHT = @{}
$str.split() | Group-Object | Sort-Object -property "Count" | ForEach-Object {$myHT.$($_.Name) = $($_.Count)}
$myHT.GetEnumerator()  | ForEach-Object{
    $couple = '{0} - {1}' -f $_.key, $_.value 
    Write-Host $couple 
}