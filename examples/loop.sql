WITH table_0 AS (
  SELECT
    1 AS n
),
table_6 AS (
  WITH RECURSIVE loop AS (
    SELECT
      n
    FROM
      table_0 AS table_1
    UNION
    ALL
    SELECT
      _expr_0
    FROM
      (
        SELECT
          n + 1 AS _expr_0
        FROM
          loop AS table_2
      ) AS table_3
    WHERE
      _expr_0 <= 3
  )
  SELECT
    *
  FROM
    loop
)
SELECT
  n
FROM
  table_6 AS table_5

-- Generated by PRQL compiler version:0.6.1 target:sql.duckdb (https://prql-lang.org)
