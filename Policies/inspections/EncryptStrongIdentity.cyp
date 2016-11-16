match (n)-[r:STRONG|WEAK]->(m)
with n as Source, m as Target
match (n:Instance)-[]->()-[r:UNENCRYPTED]->()-[]->(m:Instance)
where n = Source and m = Target
return r;