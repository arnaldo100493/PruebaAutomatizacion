
#!BEGINING ODBC SQL SERVER
import pyodbc


def read(conn):
    print("Read")
    cursor = conn.cursor()
    cursor.execute("select * FROM dummy") 
    for row in cursor:
        print(f'row = {row}')
        print()

 def create(conn):
      print("Create")
      cursor = conn.cursor()
      cursor.execute("insert into dummy(a,b) values(?,?)",
          (3232, 'abarrime')
      )       
      conn.commit()
      read(conn)

def update(conn):
      print("Create")
      cursor = conn.cursor()
      cursor.execute(
          'insert into dummy(a,b) values(?,?)',
          (3232, 'abarrime')
      )       
      conn.commit()
      read(conn)

      def delete(conn)
      print("Create")
      cursor = conn.cursor()
      cursor.execute(
          'insert into dummy(a,b) values(?,?)',
          (3232, 'abarrime')
      )       
      conn.commit()
      read(conn)  

conn = pyodbc.connect(
  "Driver={SQL Server Native Client 11.0}"
  "Server=LAPTOP-BOG-CB2H1Z2";
  "Database=;"
  "Trusted_Connection=yes;"
)

read(conn)
create(conn)
update(conn)
delete(conn)

conn.close()

#!ENDING ODBC SQL SERVER
