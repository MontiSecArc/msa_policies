match (n)-[r:UNENCRYPTED]->(m)
match (m)-[:DECLARES_IN]->(startComponent:Component)-[:CHILD_OF*]->(env:Component)-[:PARENT_OF*]->(stopComponent:Component)-[:DECLARES_OUT]->(n)
where env.trustlevel < startComponent.trustlevel or env.trustlevel < stopComponent.trustlevel
return r;