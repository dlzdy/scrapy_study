# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class ScrapyStudyItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass



class HuxiuItem(scrapy.Item):
    title = scrapy.Field()    # 标题
    link = scrapy.Field()     # 链接
    desc = scrapy.Field()     # 简述
    posttime = scrapy.Field() # 发布时间

# 银豹会员表
class PospalCustomerItem(scrapy.Item):
    member_number = scrapy.Field()              # 编号
    real_name = scrapy.Field()                  # 真实姓名
    member_point = scrapy.Field()               # 会员积分
    mobile = scrapy.Field()                     # 手机号
    is_enabled = scrapy.Field()                 # 启用状态, 0 未启用，1 已启用
    is_dealed = scrapy.Field()                  # 处理状态, 0 未处理, 1 已处理，2 处理中
    create_time = scrapy.Field()                # 创建时间
    modify_time = scrapy.Field()                # 修改时间











