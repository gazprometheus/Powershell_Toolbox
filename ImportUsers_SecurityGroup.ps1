Import-csv "filename.csv" | %{ add-adgroupmember "groupname" -member $_.samaccountname }
