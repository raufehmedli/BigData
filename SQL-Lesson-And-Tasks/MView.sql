--MATERIALIZED VIEW


CREATE MATERIALIZED VIEW test

REFRESH EVERY 1 HOUR

AS

SELECT c1.row1, c1.row2, c2.row3

FROM table1 c1

JOIN table2 c2 ON c1.id = c2.table1_id;


CREATE MATERIALIZED VIEW test

AS

SELECT c1.row1, c1.row2, t2.row3

FROM  table1 c1

JOIN table2 c2 ON c1.id = c2.table11_id;
