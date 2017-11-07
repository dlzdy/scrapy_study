# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request

class GithubSpider(scrapy.Spider):
    name = 'github'
    start_urls = ["https://www.github.com/index.php"]

    def start_requests(self):
        return [Request(url="https://github.com/login", callback=self.post_login)]


    # action=https://github.com/session
    # utf8=✓
    # authenticity_token= random
    # login= input
    # password= input
    # commit=Sign in
    def post_login(self, response):
        authenticity_token = response.xpath('//input[@name="authenticity_token"]/@value').extract()[0]
        utf8 = "✓"
        login = "dlzdy"
        pasword = "home9999"
        commit = "Sign in"

        formdata = {
            'authenticity_token': authenticity_token,
            'utf8': '✓',
            'login': 'dlzdy@163.com',
            'pasword': 'home9999',
            'commit': 'Sign in'
        }
        print("formdata=", formdata)
        return scrapy.FormRequest(url="https://github.com/session",
                                  formdata=formdata ,method="POST",
                                  callback=self.after_login)


    def after_login(self, response):
        print(response.body)
        pass
