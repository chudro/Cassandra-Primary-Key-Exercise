# Cassandra-Primary-Key-Exercise
Check out this short exercise to understand how Cassandra different primary key definitions enable different query capabilities

Here's how it works:
- Use the CQL scripts to create the tables and populate the data. You'll noticce each table is exactly the same except for the primry key definition.
- Try the queries against the tables. You'll notice that some of the queries work aginst some of the tables, but not all. 
Since Cassamdra use cases are almost always focused on performance, it's a huge benefit to understand how certain PK definitions, query capabilities, and query performance all related to each other.

Here are a few Cassandra data modeling pro-tips to stay out of trouble and get you moving the right direction:
- Cassandra doesn't support joins. That means you need to denormalize your data model. Think: materialized views. Denormalization is often a no-no in relational systems. To get 100% up-time, massive scale, throughput, speed that Cassandra delivers, it's the right way to go.
- If you're ever tempted to use a secondary index in Cassandra, don't. Instead, create a new table with a PK definition that will meet your query needs. Why do we recommend this? It's because Cassandra is a distributed system rather than a master/slave system. Denormalization is fast and scalable. Secondary indexes aren't.
- If you ever get stumped on how to data model to solve your use case, ask use for help. Cassandra is very flexible. But it's different than an RDBMS. The solution is not always obvious.

Have fun!
