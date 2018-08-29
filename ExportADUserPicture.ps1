function Get-UserPhoto(){
    param(
        [string]$Username,
        [string]$Path = "C:\Temp\AD_Photos"
    )
    
    Import-Module ActiveDirectory
    $user = Get-ADUser $Username -properties thumbnailPhoto
    if(!(test-path $Path)){mkdir $Path}
    $user.thumbnailPhoto | Set-Content ("$Path\$($User.SamAccountName).jpg") -Encoding byte
}
$UserInput = Read-Host 'Username?'

$user = Get-UserPhoto $UserInput

