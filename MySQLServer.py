import mysql.connector

try:
    # إنشاء الاتصال بسيرفر MySQL
    connection = mysql.connector.connect(
        host='localhost',   # أو حسب إعداداتك
        user='root',
        password=''         # ضع كلمة المرور لو موجودة
    )

    if connection.is_connected():
        cursor = connection.cursor()
        # إنشاء قاعدة البيانات لو مش موجودة
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Error while connecting to MySQL: {err}")

finally:
    # إغلاق الاتصال بشكل آمن
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
