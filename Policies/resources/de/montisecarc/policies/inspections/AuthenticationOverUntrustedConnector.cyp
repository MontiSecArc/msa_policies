MATCH (n:Instance)-[:WEAK|STRONG]->(m:Instance)
MATCH (n)-[:OUTGOING]->
        (:Port)-[r:UNENCRYPTED]->(:Port)
          -[:INGOING]->(m)
RETURN r;
