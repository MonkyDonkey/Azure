New-ADOrganizationalUnit -Name "UsersOU" -Path "DC=EXAMPLE,DC=COM"
New-ADOrganizationalUnit -Name "serversOU" -Path "DC=EXAMPLE,DC=COM"

$path="OU=UsersOU,DC=exam,DC=com"
$username="matan"
$count=1..100
foreach ($i in $count)
{ New-AdUser -Name $username$i -Path $path -Enabled $True -ChangePasswordAtLogon $true -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -force) -passThru }


