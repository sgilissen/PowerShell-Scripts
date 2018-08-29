$username = Read-Host 'Type username to search'

Get-ADUser $username -Properties * | Select Name, City, Department, OfficePhone, telephoneNumber, mobilePhone, mail, LockedOut