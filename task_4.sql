-- task_4.sql
-- Print full description of table "books" without using DESCRIBE or EXPLAIN
-- Database name will be passed as argument to mysql command

SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()      -- يستخدم قاعدة البيانات الحالية
  AND TABLE_NAME = 'books'
ORDER BY ORDINAL_POSITION;
