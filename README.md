# Dentist-database
#### A little project involving creating a database for a dentist office 
### containing: 

##### -Entities that may be required for designing relational database
##### -Identify Candidate keys, Primary Keys and Foreign keys
##### -Different tables required for designed database
##### -Inserted dummy data for overview and functionality in each detailed/child tables.

## Database design choices and why database tables are in good normalized forms

We have two important factors to reach normal forms for each given schema in a given database design

•	It follows the functional dependencies and the fundamental business rules and constraints.
•	Our database has been tested and decomposes according to normal forms such as: we have atomic values, attributes with unique primary keys, and candidate/foreign keys to reference table relations.



## Explaining the understanding of concurrency and isolation in Relational Databases.

### Concurrency
- An example of a database concurrency could be the ability of the database to support multiple users and processes like an airline reservation system to support users at any given time.

### Isolation
- Could be a result of a transaction that should not be visible before it is complete. Let’s say we had credit transactions on the same account executed concurrently, that would leave the database inconsistent.


## Would It be a good idea to use NoSQL database instead of Relational Database for this project? 

-Relational Databases also referred to as SQL (RDBMS) and NOSQL have different structures, storage, price and different kind of usage depending on the project. RDBMS have a predefined schema making it really easy to work with, while NOSQL has a more dynamic schema. 

-NoSQL is a kind of non-relational databases that is specialized in storing non-tabular data. And in this case, the data given is tabular since it is in column form thus cannot be kept by NoSQL technologies.

-I would also add that the community of SQL is a mature technology making it reliable for experienced developers who understand it.
-The data is also not complex hence no need of using NoSQL databases. 

## Conclusion
-I would say SQL are ideal for this scenario since it´s really user-friendly, are ideal for this kind of project since it supports ACID (Atomicity, Consistency, Isolation, Durability) which helps to create a more consistent database, and also supports normalization.

# Testing our database:
## SQL-Queries:

-See attached file:
SQL-Queries.sql
