Write-Output "-------------------------------------------------------------------------------"
Write-Output "This script allows you to count the number of enabled users in a specific city."
Write-Output "-------------------------------------------------------------------------------"
Write-Output ""

$City = Read-Host 'Specify location (eg. New York or Brussels)'

Get-ADUser -Filter{City -eq $City -and enabled -eq $true} | Measure