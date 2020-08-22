# 생활코딩 WEB2 Node.js

## JOIN 관계형 데이터
`SELECT * FROM topic LEFT JOIN author ON topic.author_id=author.id;`
```
mysql> SELECT * FROM topic;
+----+------------+-------------------+---------------------+-----------+
| id | title      | description       | created             | author_id |
+----+------------+-------------------+---------------------+-----------+
|  1 | MySQL      | MySQL is...       | 2020-08-17 00:00:11 |         1 |
|  2 | Oracle     | Oracle is ...     | 2020-08-17 00:00:11 |         1 |
|  3 | SQL Server | SQL Server is ... | 2020-08-17 00:00:11 |         2 |
|  4 | PostgreSQL | PostgreSQL is ... | 2020-08-17 00:00:11 |         3 |
|  5 | MongoDB    | MongoDB is ...    | 2020-08-17 00:00:11 |         1 |
+----+------------+-------------------+---------------------+-----------+
5 rows in set (0.01 sec)

mysql> SELECT * FROM author;
+----+--------+---------------------------+
| id | name   | profile                   |
+----+--------+---------------------------+
|  1 | egoing | developer                 |
|  2 | duru   | database administrator    |
|  3 | taeho  | data scientist, developer |
+----+--------+---------------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM topic LEFT JOIN author ON topic.author_id=author.id;
+----+------------+-------------------+---------------------+-----------+------+--------+---------------------------+
| id | title      | description       | created             | author_id | id   | name   | profile                   |
+----+------------+-------------------+---------------------+-----------+------+--------+---------------------------+
|  1 | MySQL      | MySQL is...       | 2020-08-17 00:00:11 |         1 |    1 | egoing | developer                 |
|  2 | Oracle     | Oracle is ...     | 2020-08-17 00:00:11 |         1 |    1 | egoing | developer                 |
|  3 | SQL Server | SQL Server is ... | 2020-08-17 00:00:11 |         2 |    2 | duru   | database administrator    |
|  4 | PostgreSQL | PostgreSQL is ... | 2020-08-17 00:00:11 |         3 |    3 | taeho  | data scientist, developer |
|  5 | MongoDB    | MongoDB is ...    | 2020-08-17 00:00:11 |         1 |    1 | egoing | developer                 |
+----+------------+-------------------+---------------------+-----------+------+--------+---------------------------+
5 rows in set (0.00 sec)
```

` db.query('SELECT * FROM topic LEFT JOIN author ON topic.author_id=author.id WHERE topic.id=?',[queryData.id] `
```
0|main   | [
0|main   |   RowDataPacket {
0|main   |     id: 1,
0|main   |     title: 'MySQL',
0|main   |     description: 'MySQL is...',
0|main   |     created: 2020-08-16T15:00:11.000Z,
0|main   |     author_id: 1,
0|main   |     name: 'egoing',
0|main   |     profile: 'developer'
0|main   |   }
0|main   | ]
```
이렇게 합쳐져서 나온다.
