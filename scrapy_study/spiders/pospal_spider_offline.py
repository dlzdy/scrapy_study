# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request
import json
from scrapy_study.items import PospalCustomerItem

class PosPalOffLineSpider(scrapy.Spider):
    name = 'pospal_offline'
    allowed_domains = ['baidu.com']
    start_urls = ["http://www.pospal.cn"]

    def parse(self, response):
        item = PospalCustomerItem()

        item['member_number'] = '122'
        item['real_name'] = '张大宇'
        item['member_point'] = '200'
        item['mobile'] = '15652268888'
        item['is_enabled'] = '1'
        item['is_dealed'] = '0'
        item['create_time'] = '2017-11-08 12:00:00'
        item['modify_time'] = '2017-11-08 12:00:00'

        yield item # 返回item,这时会自动解析item


