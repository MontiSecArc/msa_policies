match p = (n)-[r:UNENCRYPTED]->(m)
match p1 = (b)-[:DECLARES_IN]->(startComponent:Component)-[:CHILD_OF*]->(env:Component)-[:PARENT_OF*]->(stopComponent:Component)-[:DECLARES_OUT]->(a)
where env.trustlevel < startComponent.trustlevel or env.trustlevel < stopComponent.trustlevel
return r;