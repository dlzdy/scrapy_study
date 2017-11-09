# -*- coding=utf8 -*-
"""
数据库管理类
"""
import pymysql
from DBUtils.PooledDB import PooledDB
#自定义的配置文件，主要包含DB的一些基本配置

#数据库实例化类
class DbManager():

    def __init__(self):
        connKwargs = {'host':'localhost', 'user':'root', 'passwd':'root', 'db':'pospal', 'charset':"utf8"}
        self._pool = PooledDB(pymysql, mincached=0, maxcached=10, maxshared=10, maxusage=10000, **connKwargs)

    def getConn(self):
        return self._pool.connection()


_dbManager = DbManager()


def getConn():
    """ 获取数据库连接 """
    return _dbManager.getConn()

def executeAndGetId(sql, param=None):
    """ 执行插入语句并获取自增id """
    conn = getConn()
    cursor = conn.cursor()
    if param == None:
        cursor.execute(sql)
    else:
        cursor.execute(sql, param)
    id = cursor.lastrowid
    cursor.close()
    conn.close()

    return id

def execute(sql, param=None):
    """ 执行sql语句 """
    conn = getConn()
    cursor = conn.cursor()
    if param == None:
        rowcount = cursor.execute(sql)
    else:
        rowcount = cursor.execute(sql, param)
    cursor.close()
    conn.close()

    return rowcount

def queryOne(sql):
    """ 获取一条信息 """
    conn = getConn()
    cursor = conn.cursor()
    rowcount = cursor.execute(sql)
    if rowcount > 0:
        res = cursor.fetchone()
    else:
        res = None
    cursor.close()
    conn.close()

    return res

def queryAll(sql):
    """ 获取所有信息 """
    conn = getConn()
    cursor = conn.cursor()
    rowcount = cursor.execute(sql)
    if rowcount > 0:
        res = cursor.fetchall()
    else:
        res = None
    cursor.close()
    conn.close()

    return res

if __name__ == "__main__":
    res = execute('select count(*) from pospal_member')
    print(str(res))

    res = queryOne('select * from pospal_member limit 1, 1')
    print(str(res))

    res = queryAll('select * from pospal_member limit 10')
    print(str(res))