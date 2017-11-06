# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request
import json

class PosPalSpider(scrapy.Spider):
    name = 'pospal'
    url = 'https://user.pospal.cn/account/signin'

    def start_requests(self):
        return [Request(url='https://user.pospal.cn/account/signin', callback=self.post_login)]


    # action=https://user.pospal.cn/account/signin
    # userName= 13810807631
    # password= 888008
    def post_login(self, response):
        formdata = {
            'userName': '13810807631',
            'password': '888008'
        }
        print(formdata)
        return scrapy.FormRequest(url='https://user.pospal.cn/account/signin',
                                  formdata=formdata,
                                  method='POST',
                                  callback=self.after_login)

    def after_login(self, response):
        jsonData = json.loads(response.body)
        #{"successed":true,"msg":"http://beta7.pospal.cn/Home"}
        # {'msg': 42, 'successed': True}
        # 判断successed=true, 则继续执行，否则发送错误邮件给 xlpc_bj@163.com
        if(jsonData['successed'] == False):
            # TODO 发错误邮件通知
            logging.error('successed is false')
            return
        load_customers
        # 1.导入用户数据
        # 2.导入销售单据


        #print(response.body)

        pass

    #整个页面
    def load_custormer_summary(self):
        user_formdata = {
            'createUserId': 2968559,
            'categoryUid': '',
            'tagUid': '',
            'type': 1,
            'keyword': ''
        }
        return scrapy.Request('http://beta7.pospal.cn/Customer/LoadCustomerSummary',
                             formdata = user_formdata,
                             method = 'POST',
                             callback = self.parse_author)

    def load_customers(self):
        user_formdata = {
            'createUserId': 2968559,
            'categoryUid': '',
            'tagUid': '',
            'type': 1,
            'keyword': ''
        }
        # 'http://beta7.pospal.cn/Customer/LoadCustomersByPage'
        yield scrapy.Request('http://beta7.pospal.cn/Customer/LoadCustomersByPage',
                             formdata = user_formdata,
                             method = 'POST',
                             callback = self.parse_author)

    #http://beta7.pospal.cn/Report/LoadTicketsByPage  销售单据