-- task_4.sql
-- Full description of table books without using DESCRIBE or EXPLAIN
-- The database name is passed as argument to the mysql command

SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()   -- يستخدم قاعدة البيانات الحالية فقط
  AND TABLE_NAME = 'books'
ORDER BY ORDINAL_POSITION;
