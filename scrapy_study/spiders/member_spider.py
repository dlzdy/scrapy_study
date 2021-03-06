# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request
import json
import math
from lxml import etree
from scrapy.mail import MailSender
from scrapy_study.items import PospalCustomerItem
from datetime import datetime
class PosPalSpider(scrapy.Spider):
    name = 'member'
    createUserId = '2968559'
    userName = '13810807631'
    password = '888008'
    url_prefix = 'http://beta7.pospal.cn/Home'
    # mailer = MailSender.from_settings(settings)
    def start_requests(self):
        return [Request(url='https://user.pospal.cn/account/signin', callback=self.post_login)]

    # action=https://user.pospal.cn/account/signin
    # userName=
    # password=
    def post_login(self, response):
        formdata = {
            'userName': self.userName,
            'password': self.password
        }
        return [scrapy.FormRequest(url='https://user.pospal.cn/account/signin',
                                  formdata=formdata,
                                  method='POST',
                                  callback=self.after_login)]



    # {"successed":true,"msg":"http://beta7.pospal.cn/Home"}
    def after_login(self, response):
        jsonData = json.loads(response.body)
        print(response.body)
        # 判断successed=true, 则继续执行，否则发送错误邮件给 xlpc_bj@163.com
        if jsonData['successed'] is False:
            # TODO 发错误邮件通知
            logging.error('after_login failed')
            return

        # 1.导入用户数据
        # self.import_customers(response)
        # 2.导入销售单据
        yield  self.import_customers(response)
        #print(response.body)
        pass

    # 导入用户数据
    def import_customers(self, response):
        print('debug')
        #TypeError: to_bytes must receive a unicode, str or bytes object, got int
        #Fixed 1-->'1'
        formdata = {
            'createUserId': self.createUserId,
            'categoryUid': '',
            'tagUid': '',
            'type': '1',
            'keyword': ''
        }
        print(formdata)
        #logging.debug('import_customers formdata:' + formdata)
        return scrapy.FormRequest(url='http://beta7.pospal.cn/Customer/LoadCustomerSummary',
                                formdata=formdata,
                                method='POST',
                                callback=self.parse_customer_summary)

    # 解析会员汇总信息，总数量
    def parse_customer_summary(self, response):
        jsonData = json.loads(response.body)
        # {"successed":true,"totalRecord":199}
        if jsonData['successed'] is False:
            # TODO 发错误邮件通知
            logging.error('parse_customer_summary failed')
            return
        # 记录总数
        total_record = int(jsonData['totalRecord'])
        # 每页50
        page_size = 50
        # 计算总页数
        page_total = math.ceil(total_record/page_size) #向上取整
        #range(1, 5), 1,2,3,4
        for page_index in range(1, page_total+1):
           yield self.post_load_customers_by_page(page_index, page_size)

    # 提交会员页面
    def post_load_customers_by_page(self, page_index=1, page_size=50):
        formdata = {
            'createUserId': self.createUserId,
            'categoryUid': '',
            'tagUid': '',
            'type': str(1),
            'keyword': '',
            'pageIndex': str(page_index),
            'pageSize': str(page_size),
            'orderColumn': '',
            'asc': 'false'
        }
        return scrapy.FormRequest(url='http://beta7.pospal.cn/Customer/LoadCustomersByPage',
                             formdata=formdata,
                             method='POST',
                             callback=self.parse_load_customer_by_page)

    # 解析会员详细信息
    def parse_load_customer_by_page(self, response):
        jsonData = json.loads(response.body)
        # 判断successed=true, 则继续执行，否则发送错误邮件给 xlpc_bj@163.com
        if jsonData['successed'] is False:
            # TODO 发错误邮件通知
            logging.error('parse_customer_summary failed')
            return
        content = jsonData['contentView']
        html = etree.HTML(content)
        trs = html.xpath('//tbody/tr')  # tbody/trs
        cur_datetime = datetime.strftime('%Y-%m-%d %H:%M:%S')
        for tr in trs:
            item = PospalCustomerItem()
            item['member_number'] = tr.xpath('td[3]/text()')[0]
            item['real_name'] = tr.xpath('td[4]/text()')[0]
            item['mobile'] = tr.xpath('td[5]/text()')[0]
            item['member_point'] = tr.xpath('td[8]/text()')[0]
            item['is_enabled'] = '1'
            item['is_dealed'] = '0'
            item['create_time'] = cur_datetime
            item['modify_time'] = cur_datetime
            yield item



    #http://beta7.pospal.cn/Report/LoadTicketsByPage  销售单据