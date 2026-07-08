-- =====================================================================
-- Problem:     Rank Scores
-- Source:      LeetCode #178  (Medium)
-- Link:        https://leetcode.com/problems/rank-scores/
-- Concepts:    DENSE_RANK, window functions
-- =====================================================================

-- Restatement:
--   Rank every score from highest to lowest. Equal scores share the same
--   rank, and ranks must have no gaps (1, 1, 2, 3 -- not 1, 1, 3, 4).

-- Schema:
--   Scores(id PK, score)

-- Approach:
--   "Same rank for ties, no gaps" is the exact definition of DENSE_RANK().
--   Contrast with the alternatives:
--     - RANK()       would leave a gap after a tie  (1, 1, 3, ...)
--     - ROW_NUMBER() would break ties arbitrarily   (1, 2, 3, ...)
--   Ordering by score DESC puts the highest score first.
--
-- Note: `rank` collides with the built-in function name, so the alias is
--   quoted to keep Postgres happy.

SELECT score,
       DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM Scores;
