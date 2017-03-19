MATCH (p:Port)-->(:SecurityClass)<-[:WEAKER|CLEARANCE_FOR*2..8]-(c:Component)
MATCH (c)-[:DECLARES_OUT]->(p)
RETURN c;
