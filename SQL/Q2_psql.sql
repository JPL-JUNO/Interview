-- Active: 1690980029839@@127.0.0.1@5432@postgres
-- 问题描述：计算当前日期据五个月后的那个月月末的天数
-- 应用：比如说一个债券，五个月后的月底到期，计算距今天数
-- 使用 psql

SELECT CURRENT_DATE; -- 获取当前日期

-- 获取五个月后的日期

SELECT CURRENT_DATE + INTERVAL '5 months';

-- 获取五个月后的日期所在的月初日期

SELECT date_trunc('month', CURRENT_DATE + INTERVAL '5 months');

-- 下一个月的月初，向前推一天，得到上月的月末日期

SELECT date_trunc('month', CURRENT_DATE + INTERVAL '5 months') + INTERVAL '1 month' - INTERVAL '1 day';


SELECT date_trunc('month', CURRENT_DATE + INTERVAL '5 months') + INTERVAL '1 month' - INTERVAL '1 day' - CURRENT_DATE; -- 获取的是一个字段 {'days': int}


SELECT EXTRACT(DAY FROM(date_trunc('month', CURRENT_DATE + INTERVAL '5 months') + INTERVAL '1 month' - INTERVAL '1 day' - CURRENT_DATE)); -- 仅获取天数（整数）
