#!/usr/bin/env python
import code, re
if __name__ == '__main__':
    import MySQLdb
    db = MySQLdb.connect(
        host='server',
        user='root',
        passwd="root",
        db="dms_training"
        )
    print "AVAILABLE:"
    cursor = db.cursor()
    cursor.execute("SHOW TABLES")
    tables = cursor.fetchall()
    for table in tables:
        print '    %s' % table
    print "Database available as 'db'"
    code.interact(local=locals())

