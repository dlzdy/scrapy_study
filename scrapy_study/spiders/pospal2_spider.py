# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request
import json

class PosPal2Spider(scrapy.Spider):
    name = 'pospal2'
    createUserId = '2968559'


    def start_requests(self):
        return [Request(url='https://user.pospal.cn/account/signin', callback=self.post_login)]


    # action=https://user.pospal.cn/account/signin
    # userName=
    # password=
    def post_login(self, response):
        print('debug')
        formdata = {
            'createUserId': self.createUserId,
            'categoryUid': '',
            'tagUid': '',
            'type': '1',
            'keyword': ''
        }
        print(formdata)
        return scrapy.FormRequest('http://beta7.pospal.cn/Customer/LoadCustomerSummary',
                                formdata=formdata,
                                method='POST',
                                callback=self.after_login)

    # {"successed":true,"msg":"http://beta7.pospal.cn/Home"}
    def after_login(self, response):
        print(response.body)
        # jsonData = json.loads(response.body)
        # logging.debug(response.body)
        # # 判断successed=true, 则继续执行，否则发送错误邮件给 xlpc_bj@163.com
        # if jsonData['successed'] is False:
        #     # TODO 发错误邮件通知
        #     logging.error('after_login failed')
        #     return
        #
        # # 1.导入用户数据
        # self.import_customers()
        # # 2.导入销售单据
        # #self.import_customers()
        # #print(response.body)
        # pass
