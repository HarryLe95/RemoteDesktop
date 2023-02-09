param(
    [String]$Address = $null
)

if ([string]::IsNullOrEmpty($Address)){
    $Address = Read-Host "Address: "
}

mstsc /v:$Address