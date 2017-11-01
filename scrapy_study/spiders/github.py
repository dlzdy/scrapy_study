# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request


class GithubSpider(scrapy.Spider):
    name = 'github'
    allowed_domains = ['github.com']
    start_urls = ['http://github.com/']



