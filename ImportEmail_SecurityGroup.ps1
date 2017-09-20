
#Add csv of users' email addresses to particular AD group.

import-module ActiveDirectory 
ForEach ($item in (Import-CSV .\results2.csv)) {
$email = $item.'EmailAddress' 
Get-ADUser -Filter "mail -eq '$email'" | 
% { Add-ADGroupMember -Identity "GroupName" -Members $_ }
}

