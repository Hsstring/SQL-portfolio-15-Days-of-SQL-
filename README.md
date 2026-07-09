# SQL Challenge Portfolio

A growing collection of SQL problems from 15 days of SQL I've solved while learning, organized by
concept. Each solution documents the **approach and reasoning**.

**Dialect:** PostgreSQL

## How this is organized

Solutions are grouped by the core SQL concept, each day one core concept, rather than by
source or difficulty, so the folder layout doubles as a map of what I've studied.

| Folder                | Focus                                                       |
| --------------------- | ----------------------------------------------------------- |
| `Basic Grouping/`     | GROUP BY, HAVING, conditional aggregates                    |
| `window-functions/`   | RANK, DENSE_RANK, ROW_NUMBER, running totals, LAG / LEAD    |
| `subqueries/`         | scalar & correlated subqueries, NULL handling               |
| `ctes/`               | WITH clauses, recursive CTEs                                |
| `aggregation/`        |         INNER / LEFT / SELF joins, multi-table queries      |
| `string-and-date/`    | text and date/time manipulation                             |


## Solution file format

Every `.sql` file in each folder (each Day) follows the same shape so the repo stays consistent:

1. **Challenge Number** 
2. **Challenge Description**
3. **The query**
