################################
##
## ModulName : 
##     Expoert-CSV-Regex
##
################################

function Export-CSV-Regex{
    param
    (
        [string]$InFile,
        [String]$OutFile,
        [String]$RegexPattern
    )
    $text = Get-Content -Raw $InFile
    $regex = [Regex]$RegexPattern
    $matches = $regex.Matches($text)
    $array = @()

    foreach($match in $matches)
    {
        $row = [PSCustomObject]@{}
        foreach($i in 0..($match.Groups.Count - 1) ) {$row | Add-Member Group${i} $match.Groups[$i].Value}
        $array += ,$row
    }

    $array | Export-Csv -Path $OutFile
}