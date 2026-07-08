# SQL Challenge Portfolio

A growing collection of SQL problems I've solved while learning, organized by
concept. Each solution documents the **approach and reasoning**, not just the
final query.

**Dialect:** PostgreSQL

## How this is organized

Solutions are grouped by the core SQL concept they exercise rather than by
source or difficulty, so the folder layout doubles as a map of what I can do.

| Folder                | Focus                                                       |
| --------------------- | ----------------------------------------------------------- |
| `joins/`              | INNER / LEFT / SELF joins, multi-table queries              |
| `window-functions/`   | RANK, DENSE_RANK, ROW_NUMBER, running totals, LAG / LEAD    |
| `subqueries/`         | scalar & correlated subqueries, NULL handling               |
| `ctes/`               | WITH clauses, recursive CTEs                                |
| `aggregation/`        | GROUP BY, HAVING, conditional aggregates                    |
| `string-and-date/`    | text and date/time manipulation                             |

## Index

| Problem                                                     | Source       | Difficulty | Concepts                          |
| ----------------------------------------------------------- | ------------ | ---------- | --------------------------------- |
| [Combine Two Tables](joins/175_combine_two_tables.sql)      | LeetCode 175 | Easy       | LEFT JOIN                         |
| [Rank Scores](window-functions/178_rank_scores.sql)         | LeetCode 178 | Medium     | DENSE_RANK                        |
| [Second Highest Salary](subqueries/176_second_highest_salary.sql) | LeetCode 176 | Medium | scalar subquery, NULL handling    |

_Add a row here each time you solve a new one — the index is what makes the
whole repo skimmable._

## Solution file format

Every `.sql` file follows the same shape so the repo stays consistent:

1. **Header block** — problem name, source + number, link, concepts
2. **Restatement** — the problem in my own words (one or two lines)
3. **Schema** — the tables involved
4. **Approach** — *why* this query, including alternatives I ruled out
5. **The query**

The three files currently in here are filled in as format examples. The part
that actually makes this a portfolio is writing the *restatement* and *approach*
in your own words as you solve each problem — that reasoning is what turns an
answer key into evidence of how you think.
