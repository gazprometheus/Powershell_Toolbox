#Pull e-mail addresses from list of samaccountnames

Import-csv ".\Desktop\file.csv" | forEach { Get-ADUser $_.samaccountname -properties EmailAddress} | select -ExpandProperty EmailAddress | out-file .\Desktop\testemails2.csv
