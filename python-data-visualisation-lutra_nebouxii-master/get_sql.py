import psycopg2

def runSql(query, connection_info):
    try:
        # gitben database_config.txt-be elmenteni zet a stringet
        connect_str = connection_info
        conn = psycopg2.connect(connect_str)
        conn.autocommit = True
        cursor = conn.cursor()
        cursor.execute(query)
        return cursor.fetchall()
    except Exception as e:
        print("Oi, yer password or yer username must be not good!")
        print(e)


