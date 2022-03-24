param (
[parameter(mandatory = $true)]
[ValidateNotNullOrEmpty()] 
[string]
$str
)
$myHT = @{}

$nova = $str -split '' -match '\w'

Foreach ($elm in $nova) 
{
    if ($myHT.Keys -notcontains $elm)
    {
        $myHT[$elm]=1
    } 
    else
    {
        $myHT[$elm]+=1
    }
}

$myHT.GetEnumerator() | ForEach-Object {"$($_.key)$($_.Value)"} | Write-Host -NoNewline





<#$nova = $str.ToCharArray() 
Foreach ($elm in $nova) 
{
    if ($myHT.Keys -notcontains $elm)
    {
        $myHT[$elm]=1
    } 
    else
    {
        $myHT[$elm]+=1
    }
}

$myHT





$str.ToCharArray() | Group-Object | Sort-Object -property "Count" | ForEach-Object {$myHT.$($_.Name) = $($_.Count)}
$myHT.GetEnumerator()  | ForEach-Object{
    $couple = '{0}{1}' -f $_.key, $_.value 
    Write-Host $couple 
}
$Testht = @{one = 1; two = 2; three = 3}
$Testht
$Testht["one"]=$Testht["one"]+1
#>