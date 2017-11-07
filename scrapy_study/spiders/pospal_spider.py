# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request
import json

class PosPalSpider(scrapy.Spider):
    name = 'pospal'
    url = 'https://user.pospal.cn/account/signin'
    createUserId = 2968559
    userName = '13810807631'
    password = '888008'
    url_prefix = 'http://beta7.pospal.cn/Home'
    def start_requests(self):
        return [Request(url='https://user.pospal.cn/account/signin', callback=self.post_login)]


    # action=https://user.pospal.cn/account/signin
    # userName= 13810807631
    # password= 888008
    def post_login(self, response):
        formdata = {
            'userName': self.userName,
            'password': self.password
        }
        print(formdata)
        return scrapy.FormRequest(url='https://user.pospal.cn/account/signin',
                                  formdata=formdata,
                                  method='POST',
                                  callback=self.after_login)

    # {"successed":true,"msg":"http://beta7.pospal.cn/Home"}
    def after_login(self, response):
        jsonData = json.loads(response.body)
        logging.debug(response.body)
        # 判断successed=true, 则继续执行，否则发送错误邮件给 xlpc_bj@163.com
        if jsonData['successed'] is False:
            # TODO 发错误邮件通知
            logging.error('after_login failed')
            return

        # 1.导入用户数据
        self.import_customers()
        # 2.导入销售单据
        #self.import_customers()
        #print(response.body)
        pass

    # 导入用户数据
    def import_customers(self):
        formdata = {
            'createUserId': self.createUserId,
            'categoryUid': '',
            'tagUid': '',
            'type': 1,
            'keyword': ''
        }
        print(formdata)
        logging.debug('import_customers formdata:' + formdata)
        return scrapy.FormRequest('http://beta7.pospal.cn/Customer/LoadCustomerSummary',
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
        if total_record % page_size == 0 :
            page_total = total_record / page_size
        else:
            page_total =  total_record / page_size + 1

        for page_index in range(1, page_total):
            self.post_load_customers_by_page(page_index, page_size)

    # 提交会员页面
    def post_load_customers_by_page(self, page_index=1, page_size=50):
        formdata = {
            'createUserId': self.createUserId,
            'categoryUid': '',
            'tagUid': '',
            'type': 1,
            'keyword': '',
            'pageIndex': page_index,
            'pageSize': page_size,
            'orderColumn': '',
            'asc': False
        }
        yield scrapy.FormRequest('http://beta7.pospal.cn/Customer/LoadCustomersByPage',
                             formdata=formdata,
                             method='POST',
                             callback=self.parse_load_customer_by_page)

    # 解析会员详细信息
    def parse_load_customer_by_page(self, response):
        print(response.body)
    #http://beta7.pospal.cn/Report/LoadTicketsByPage  销售单据