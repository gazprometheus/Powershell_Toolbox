#Add csv of SAMAccountNames to particular group.

import-module activedirectory 
ForEach ($item in (Import-CSV .\results2.csv)) {
$email = $item.'EmailAddress' 
Get-ADUser -Filter "mail -eq '$email'" | 
% { Add-ADGroupMember -Identity "OIT-eVPN" -Members $_ }
}
