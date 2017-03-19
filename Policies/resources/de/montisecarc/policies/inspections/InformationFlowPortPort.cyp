MATCH (p1)-[:SECURITY_CLASS|WEAKER*2..8]->(:SecurityClass)<-[:SECURITY_CLASS]-(p2)
MATCH (p1:Port)-->(p2:Port)
RETURN p2;