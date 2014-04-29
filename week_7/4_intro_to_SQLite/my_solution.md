# U3.W7: Intro to SQLite

# I worked on this challenge with AJ.


## Release 0: Create a dummy database

sqlite> .databases
seq  name             file                                                      
---  ---------------  ----------------------------------------------------------
0    main             /Users/aj.jaiyeola/dummy.db                               
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );

## Release 1: Insert Data 

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 18:30:43  2014-04-27 18:30:43
2           Tim         McClung     timothyjmcclung@gmail  2014-04-27 18:36:16  2014-04-27 18:36:16
3           AJ          Jaiyeola    jaiyeolab@gmail.com    2014-04-27 18:39:45  2014-04-27 18:39:45

## Release 2: Multi-line commands

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: UNIQUE constraint failed: users.email
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 18:32:27  2014-04-27 18:32:27
2           Tim         McClung     timothyjmcclung@gmail  2014-04-27 18:36:16  2014-04-27 18:36:16
3           AJ          Jaiyeola    jaiyeolab@gmail.com    2014-04-27 18:41:35  2014-04-27 18:41:35

## Release 3: Add a column

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
 nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------
 ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 18:32:27  2014-04-27 18:32:27
 Kimchee
2           Tim         McClung     timothyjmcclung@gmail  2014-04-27 18:36:16  2014-04-27 18:36:16
 Timmit
3           AJ          Jaiyeola    jaiyeolab@gmail.com    2014-04-27 18:41:35  2014-04-27 18:41:35
 Dee

## Release 4: Change a value
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
 nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------
 -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-27 18:32:27  2014-04-27 19:11:53
 Ninja Coder
2           Tim         McClung     timothyjmcclung@gmail  2014-04-27 18:36:16  2014-04-27 18:36:16
 Timmit
3           AJ          Jaiyeola    jaiyeolab@gmail.com    2014-04-27 18:41:35  2014-04-27 18:41:35
 Dee

## Release 5: Reflect
# While SQLite gave me a few problems, the challenge went very smoothly.
# Working with AJ was great because we were both new to SQL and we were
# pretty much on the same page. As you can see, the formatting looks a 
# little bit strange, but this was due to the size of my terminal window,
# and I couldn't find a way to adjust it. Overall, I felt that this assignment
# gave me an idea of the legitimate real-world application of the SQL
# library.