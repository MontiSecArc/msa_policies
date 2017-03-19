MATCH path = (p:Port)-->(:SecurityClass)<-[:WEAKER|CLEARANCE_FOR*2..8]-(c:Component)
MATCH (p)-[:DECLARES_IN]->(c)
RETURN c;