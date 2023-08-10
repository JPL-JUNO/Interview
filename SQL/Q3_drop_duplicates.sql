-- Active: 1683725252949@@127.0.0.1@3306@interview
USE interview;

-- 计算不同值的个数

SELECT id,
       COUNT(DISTINCT val)
FROM calculate_nunique
GROUP BY id;

-- 使用 group by 来计算唯一值个数

SELECT id,
       COUNT(*) AS cnt
FROM
    (SELECT id,
            val
     FROM calculate_nunique
     GROUP BY id,
              val) AS t;