param(
    [switch]$remove = $false,
    [String]$Address = $null
)

if ([string]::IsNullOrEmpty($Address)){
    $Address = Read-Host "Address: "
}

function Add-Credential{
    param (
        [String]$addr
    )
    $Username = Read-Host "Username: "
    $EPassword = Read-Host "Password: " -AsSecureString
    $Password = [System.Net.NetworkCredential]::new("",$EPassword).Password
    cmdkey /generic:$addr /user:$Username /pass:$Password
}

function Remove-Credential{
    param (
        [String]$addr
    )
    cmdkey /delete:$addr
}

if ($remove -eq $true){
    Remove-Credential $Address
}else{
    Add-Credential $Address
}
