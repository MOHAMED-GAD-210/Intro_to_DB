import mysql.connector
from mysql.connector import Error

try:
    # إنشاء الاتصال بسيرفر MySQL
    connection = mysql.connector.connect(
        host='localhost',       # لو على sandbox خليها localhost
        user='root',            # اسم المستخدم
        password=''             # ضع كلمة المرور لو موجودة
    )

    if connection.is_connected():
        cursor = connection.cursor()
        # إنشاء قاعدة البيانات لو مش موجودة
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error while connecting to MySQL: {e}")

finally:
    # إغلاق الاتصال بشكل آمن
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
