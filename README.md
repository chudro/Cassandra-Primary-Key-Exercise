# Cassandra-Primary-Key-Exercise
Check out this short exercise to understand how Cassandra  primary key definitions enable various query capabilities.

####Cassandra Data Model Pro-Tips

Here are a few Cassandra data modeling pro-tips and principles to stay out of trouble and get you moving the right direction:
- **Primary Keys:** Know how they work. Doing this exercise is a great start.

- **Secondary Indexes:** If you're  tempted to use a secondary index in Cassandra, don't. Instead, create a new table with a PK definition that will meet your query needs. Why? It has to do with the fact that Cassandra is a distributed system. In Cassandra, denormalization is fast and scalable. Secondary indexes aren't as much.

- **Relational Data Models:** Relational data models don't work well, or at all, in Cassandra. That's a good thing, because Cassandra avoids the overhead involved in processing relational operations like read-before-write and joins. It's part of what makes Cassandra fast and scalable. It also means you should not copy your relational tables to Cassandra if you're migrating a relational system to Cassandra. Use a well-designed Cassandra data model.

- **Joins:** Cassandra doesn't support joins. How do you create M:1 and M:M relations? Easy... denormalize your data model. Think in materialized views. Denormalization is often a no-no in relational systems. To get 100% up-time, massive scale, throughput, speed that Cassandra delivers, it's the right way to go.

- **Allow Filtering:** See the advice for Secondary Indexes, above.

####Cassandra Primary Key Exercise

Since Cassamdra use cases are almost always focused on performance, it's a huge benefit to understand how certain PK definitions, query capabilities, and query performance all related to each other.

Here's how to do the exercise:

1) Use the [CQL scripts](https://github.com/RichReffner/Cassandra-Primary-Key-Exercise/blob/rich-mods-1/Cassandra-Primary-Key-Tables-Data.cql) to create tables and populate data. You'll noticce each table is exactly the same except for the primry key definition.

2) Try the [queries](https://github.com/RichReffner/Cassandra-Primary-Key-Exercise/blob/master/Cassandra-Primary-Key-Queries.cql) against the tables. You'll notice that some of the queries work aginst some of the tables, but not all. Why?

3) What would you do if you needed to query all messages with sentiment = 'positive'?

Have fun!