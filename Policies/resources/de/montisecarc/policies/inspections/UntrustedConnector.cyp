match (n)-[r:UNENCRYPTED]->(m)
match (m)-[:INGOING]->()-[:CHILD_OF]->(startComponent:Component)-[:CHILD_OF*]->(env:Component)-[:PARENT_OF]->(stopComponent:Component)-[:PARENT_OF*]->()-[:OUTGOING]->(n)
where env.trustlevel < startComponent.trustlevel or env.trustlevel < stopComponent.trustlevel
return r;