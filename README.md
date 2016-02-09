# Cassandra-Primary-Key-Exercise
Check out this short exercise to understand how Cassandra  primary key definitions enable various query capabilities.

Since Cassandra use cases are typically focused on performance and up-time, it's critical to understand how Primary Key (PK) definition, query capabilities, and performance are related.

**Here's how to do the exercise**

1) Use the [CQL scripts](https://github.com/RichReffner/Cassandra-Primary-Key-Exercise/blob/rich-mods-1/Cassandra-Primary-Key-Tables-Data.cql) to create tables and populate data. You'll notice each table is exactly the same except for the primary key definition.

2) Try the [queries](https://github.com/RichReffner/Cassandra-Primary-Key-Exercise/blob/master/Cassandra-Primary-Key-Queries.cql) against the tables. You'll notice that some of the queries work against some of the tables, but not all. Why?

3) Extra Credit: What would you do if you needed to query all messages with sentiment = 'positive'?

4) Challenge Question: In the real world, how many tweets would you guess occur per day? As of this writing, Twitter generates ~500M tweets/day [according to these guys](http://www.internetlivestats.com/twitter-statistics/). Let's say we need to run a query that captures all tweets over a specified range of time. Given our data model scenario, we simply data model a primary key value of (ch, dt) to capture all tweets in a single Cassandra row sorted in order of time, right? Easy! But, alas, the Cassandra logical limit of single row size (2B columns in C* v2.1) would fill up after about 4 days. Ack! Our primary key won't work. What would we do to solve our query?

Have fun!

####Cassandra Data Model and Query Pro-Tips

Here are a few Cassandra data modeling pro-tips and principles to stay out of trouble and get you moving the right direction:
- **Primary Keys:** Know what a partition key is. Know what a clustering key is. Know how they work for storing the data and for allowing query functionality. This exercise is a great start.

- **Secondary Indexes:** If you're tempted to use a secondary index in Cassandra in production, at least in Cassandra 2.1, don't do it. Instead, create a new table with a PK definition that will meet your query needs. In Cassandra, denormalization is fast and scalable. Secondary indexes aren't as much. Why? Lots of reason that have to do with the fact that Cassandra is a distributed system. It's a good thing.

- **Relational Data Models:** Relational data models don't work well (or at all) in Cassandra. That's a good thing, because Cassandra avoids the extra overhead involved in processing relational operations. It's part of what makes Cassandra fast and scalable. It also means you should not copy your relational tables to Cassandra if you're migrating a relational system to Cassandra. Use a well-designed Cassandra data model.

- **Joins:** Cassandra doesn't support joins. How do you create M:1 and M:M relations? Easy... denormalize your data model and use a PK definition that works. Think in materialized views. Denormalization is often a no-no in relational systems. To get 100% up-time, massive scale/throughput and speed that Cassandra delivers, it's the right way to go.

- **Allow Filtering:** If you're tempted to use Allow Filtering in production, see the advice for Secondary Indexes above.

- **Batches:** Batches solve a different problem in Cassandra than they do in relational databases. Use them to get an atomic operation for a single PK across multiple tables. Do NOT use them to batch large numbers of operations assuming Cassandra will optimize the query performance of the batch. It doesn't work that way. Use batches appropriately or not at all.

Feel free to reach out if you have any Cassandra data modeling questions. The [DataStax documentation](http://docs.datastax.com/) is also a great resource.
