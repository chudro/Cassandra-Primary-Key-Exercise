# Cassandra-Primary-Key-Exercise
Check out this short exercise to understand how Cassandra different primary key definitions enable different query capabilities

####Cassandra Data Model Pro-Tips

Here are a few Cassandra data modeling pro-tips and principles to stay out of trouble and get you moving the right direction:
- **Secondary Indexes:** If you're ever tempted to use a secondary index in Cassandra, don't. Instead, create a new table with a PK definition that will meet your query needs. Why do we recommend this? It's because Cassandra is a distributed system rather than a master/slave system. Denormalization is fast and scalable. Secondary indexes aren't.
- **Relational Data Models:** Relational data models don't work in Cassandra. That's a good thing, because Cassandra avoids the overhead involved in processing relational operations. That's part of what makes Cassandra fast and scalable. It also means you should not copy over your relational tables to Cassandra if you are migrating a relational system to Cassandra. Use a Cassandra data model.
- **Joins:** Cassandra doesn't support joins. That means you need to denormalize your data model. Think: materialized views. Denormalization is often a no-no in relational systems. To get 100% up-time, massive scale, throughput, speed that Cassandra delivers, it's the right way to go.
- **Allow Filtering:** See the advice for Secondary Indexes, above.

####Cassandra Primary Key Exercise

Since Cassamdra use cases are almost always focused on performance, it's a huge benefit to understand how certain PK definitions, query capabilities, and query performance all related to each other.

Here's how to do the exercise:
1) Use the [CQL scripts](https://github.com/RichReffner/Cassandra-Primary-Key-Exercise/blob/rich-mods-1/Cassandra-Primary-Key-Tables-Data.cql) to create tables and populate data. You'll noticce each table is exactly the same except for the primry key definition.
2) Try the [queries](https://github.com/RichReffner/Cassandra-Primary-Key-Exercise/blob/master/Cassandra-Primary-Key-Queries.cql) against the tables. You'll notice that some of the queries work aginst some of the tables, but not all. Why?
3) What would you do if you needed to query all messages with sentiment = 'positive'?

Have fun!
