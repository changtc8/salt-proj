#!/usr/bin/env python
""" mongodb installation test
    add three records to the database,
    test the count to indicate test passed or failed
    remove the records
"""
from pymongo.connection import Connection
connection = Connection("localhost")
 
db = connection.mydb
  
doc1 = {"timestamp":001, "msg":"Hello 1"}
doc2 = {"timestamp":002, "msg":"Hello 2"}
doc3 = {"timestamp":003, "msg":"Hello 3"}

db.mydb.save(doc1)
db.mydb.save(doc2)
db.mydb.save(doc3)

if db.mydb.count() == 3:
    print "mongodb test passed. "
    db.mydb.remove()
else:
    print "mongodb test failed. " 
