match (t1:Trustlevel)-[:TRUST]->()-[:DECLARES_OUT]->(n:Port)-[:UNENCRYPTED]->(m:Port)-[:DECLARES_IN]->()-[:TRUST]->(t2:Trustlevel)
where t2.level < t1.level
return m;