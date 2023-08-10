-- Active: 1683725252949@@127.0.0.1@3306@interview
USE interview;


CREATE TABLE calculate_nunique(id VARCHAR(10),
                                  val BIGINT);


INSERT INTO calculate_nunique(id, val)
VALUES ('a',
        2022), ('a',
                2023), ('a',
                        2020), ('a',
                                2020), ('a',
                                        2022), ('a',
                                                2023), ('a',
                                                        2020);


SELECT *
FROM calculate_nunique;