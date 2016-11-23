match (n:Instance)-[:WEAK|STRONG]->(m:Instance)
match (n)-[:OUTGOING]->(p1:Port)-[r:UNENCRYPTED]->(p2:Port)-[:INGOING]->(m)
return r;