-- =====================================================================
-- Problem:     Second Highest Salary
-- Source:      LeetCode #176  (Medium)
-- Link:        https://leetcode.com/problems/second-highest-salary/
-- Concepts:    scalar subquery, DISTINCT, NULL handling, LIMIT / OFFSET
-- =====================================================================

-- Restatement:
--   Return the second highest DISTINCT salary from Employee. If there is
--   no second highest (only one salary, or all salaries equal), return
--   NULL rather than an empty result.

-- Schema:
--   Employee(id PK, salary)

-- Approach:
--   DISTINCT collapses duplicate salaries so ties don't hide the real
--   runner-up. ORDER BY salary DESC + OFFSET 1 skips the top salary, and
--   LIMIT 1 takes the next one.
--
--   The subtle part is the empty-result case: an inner query returning no
--   rows would normally produce no output at all. Wrapping it in an outer
--   SELECT (...) forces exactly one row, which evaluates to NULL when the
--   subquery is empty -- precisely what the problem asks for.

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
