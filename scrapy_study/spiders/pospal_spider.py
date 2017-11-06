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
        userName = "13810807631"
        password = "888008"
        formdata = {
            'userName': userName,
            'password': password,
        }
        print(formdata)
        return scrapy.FormRequest(url='https://user.pospal.cn/account/signin',
                                  formdata=formdata,
                                  method='POST',
                                  callback=self.after_login)

    def after_login(self, response):
        resutJson = json.loads(response.body)
        # 判断successed=true, 则继续执行，否则发送错误邮件给 xlpc_bj@163.com
        # 1.导入用户数据
        yield loadCustomersByPage(response)


        #print(response.body)

        pass

    # http://beta7.pospal.cn/Customer/LoadCustomersByPage
    def loadCustomersByPage(self, response):
        formdata = {

        }
        pass
    #http://beta7.pospal.cn/Report/LoadTicketsByPage  销售单据