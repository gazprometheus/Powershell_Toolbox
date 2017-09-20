#Get list of users in group (ALTERNATIVE to Get-ADGroupMember / Legacy PS)

Get-ADUser -filter * -Properties memberof | Where {$_.memberof -match "GroupName"} | Export-CSV -path ./test.csv
