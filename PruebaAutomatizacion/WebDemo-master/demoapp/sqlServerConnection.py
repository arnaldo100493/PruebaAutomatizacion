
#!BEGINING ODBC SQL SERVER
import pyodbc


def read(conn):
    print("Read")
    cursor = conn.cursor()
    cursor.execute("select * from dummy")
    for row in cursor:
        print("row = {row}")
        print()
        input()


def create(conn):
    print("Create")
    cursor = conn.cursor()
    cursor.execute("insert into dummy(id, info) values(?,?);",
                   (3232, 'catzzz'))
    conn.commit()
    read(conn)
    print()
    input()


def update(conn):
    print("Update")
    cursor = conn.cursor()
    cursor.execute("update dummy set, info = ? where id = ?;",
                   ('dogzzz', 3232))
    conn.commit()
    read(conn)
    print()
    input()


def delete(conn):
    print("Delete")
    cursor = conn.cursor()
    cursor.execute("delete from dummy where id > 5")
    conn.commit()
    read(conn)
    print()
    input()

conn = pyodbc.connect(
    "Driver={SQL Server Native Client 11.0};"
    "Server=BOG-CB2H1Z2;"
    "Database=robotframework;"
    "Trusted_Connection=yes;"
)

read(conn)
create(conn)
update(conn)
delete(conn)

conn.close()

#!ENDING ODBC SQL SERVER
