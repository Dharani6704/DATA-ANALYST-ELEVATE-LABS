import sqlite3

# Create the database file and table
conn = sqlite3.connect("sales_data.db")
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS sales (
    id INTEGER PRIMARY KEY,
    product TEXT,
    quantity INTEGER,
    price REAL
)
""")

# Insert sample data
cursor.executemany("""
INSERT INTO sales (product, quantity, price) VALUES (?, ?, ?)
""", [
    ("Laptop", 5, 800),
    ("Mouse", 20, 25),
    ("Keyboard", 10, 45),
    ("Monitor", 7, 150),
    ("Laptop", 3, 800),
    ("Mouse", 15, 25)
])

conn.commit()
conn.close()
