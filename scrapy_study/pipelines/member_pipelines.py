# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

from scrapy_study.items import PospalCustomerItem
from scrapy.exceptions import DropItem
import pymysql
from DBUtils.PooledDB import PooledDB
import contextlib
from dbmanager import  DBManager

# 定义上下文管理器，连接后自动关闭连接
@contextlib.contextmanager
def mysql(host='127.0.0.1', port=3306, user='root', passwd='root', db='pospal', charset='utf8'):
    conn = pymysql.connect(host=host, port=port, user=user, passwd=passwd, db=db, charset=charset)
    cursor = conn.cursor()
    conn.autocommit(0)
    try:
        yield cursor
    finally:
        conn.commit()
        cursor.close()
        conn.close()


# 执行sql
# with mysql() as cursor:
#     print(cursor)
#     row_count = cursor.execute("select * from tb7")
#     row_1 = cursor.fetchone()
#     print
#     row_count, row_1

class DuplicatesPipeline(object):

    def __init__(self):
        self.ids_seen = set() # 加载数据库中的数据

    def process_item(self, item, spider):
        if item['id'] in self.ids_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.ids_seen.add(item['id'])
            return item


class SavePipeline(object):

    def process_item(self, item, spider):
        with mysql() as cursor:
            insert_sql = 'insert into pospal_member(member_number, real_name, mobile, member_point, is_enabled, is_dealed, create_time, modify_time)values(%s, %s, %s, %s, %s, %s, %s, %s)'
            params = (item['member_number'], item['real_name'], item['mobile'], item['member_point'], item['is_enabled'], item['is_dealed'], item['create_time'], item['modify_time'])
            count = cursor.execute(insert_sql, params)
        return item

    # def __init__(self, mongo_uri, mongo_db):
    #     self.mongo_uri = mongo_uri
    #     self.mongo_db = mongo_db
    #
    # @classmethod
    # def from_crawler(cls, crawler):
    #     return cls(
    #         mongo_uri=crawler.settings.get('MONGO_URI'),
    #         mongo_db=crawler.settings.get('MONGO_DATABASE', 'items')
    #     )
    #
    # def open_spider(self, spider):
    #     self.client = pymongo.MongoClient(self.mongo_uri)
    #     self.db = self.client[self.mongo_db]
    #
    # def close_spider(self, spider):
    #     self.client.close()
    #
    # def process_item(self, item, spider):
    #     collection_name = item.__class__.__name__
    #     self.db[collection_name].insert(dict(item))
    #     return item

