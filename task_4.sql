-- task_4.sql
-- Full description of the table Books without using DESCRIBE or EXPLAIN
-- Use INFORMATION_SCHEMA to fetch all details

SELECT 
    COLUMN_NAME AS `Column`,
    COLUMN_TYPE AS `Type`,
    IS_NULLABLE AS `Null`,
    COLUMN_KEY AS `Key`,
    COLUMN_DEFAULT AS `Default`,
    EXTRA AS `Extra`
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME = 'Books'
ORDER BY ORDINAL_POSITION;
