# -*- coding: utf-8 -*-
import scrapy
import logging
from scrapy import Request
import json
from scrapy_study.items import PospalCustomerItem
from lxml import etree
html_content = '''
<thead>
    <tr>
        <th width="50">序号</th>
        <th width="140">操作</th>
        <th class='thSort Desc' data="number" title="点击排序">
            会员号<img src="/images/thempty.gif" alt="" class="mCS_img_loaded">
        </th>
        <th>姓名</th>
        <th>电话</th>
        <th class='thSort Desc' data="categoryName" title="点击排序">
            会员等级<img src="/images/thempty.gif" alt="" class="mCS_img_loaded">
        </th>
        <th class='thSort Asc' data="money" title="点击排序">
            余额<img src="/images/thempty.gif" alt="" class="mCS_img_loaded">
        </th>
        <th class='thSort Asc' data="point" title="点击排序">
            积分<img src="/images/thempty.gif" alt="" class="mCS_img_loaded">
        </th>
        <th width="60">次卡</th>
        <th width="70">购物卡</th>
        <th width="70">优惠券</th>
        <th>开卡门店</th>
        <th class='thSort Asc' data="createdDate" title="点击排序">
            开卡日期<img src="/images/thempty.gif" alt="" class="mCS_img_loaded">
        </th>
    </tr>
</thead>
<tbody>
            <tr data="10110150029">
                <td class="tdAlignCenter">1</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>10110150029</td>
                <td>女士</td>
                <td>15110150029</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">17</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2017-09-26</td>
            </tr>
            <tr data="12345678900000">
                <td class="tdAlignCenter">2</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>12345678900000</td>
                <td>谢思成</td>
                <td>13911821185</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">0</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2017-04-13</td>
            </tr>
            <tr data="13255066996">
                <td class="tdAlignCenter">3</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13255066996</td>
                <td>13255066996</td>
                <td>13255066996</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">0</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-12-30</td>
            </tr>
            <tr data="13301168135">
                <td class="tdAlignCenter">4</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13301168135</td>
                <td>13301168135</td>
                <td>13301168135</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">0</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-12-30</td>
            </tr>
            <tr data="13391516682">
                <td class="tdAlignCenter">5</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13391516682</td>
                <td>井琛</td>
                <td>13391516682</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">0</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-12-19</td>
            </tr>
            <tr data="13401112094">
                <td class="tdAlignCenter">6</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13401112094</td>
                <td>冯梦莎</td>
                <td>13401112094</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">68</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-12-07</td>
            </tr>
            <tr data="13481020531">
                <td class="tdAlignCenter">7</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13481020531</td>
                <td>13481020531</td>
                <td>13481020531</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">0</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-10-28</td>
            </tr>
            <tr data="13511050681">
                <td class="tdAlignCenter">8</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13511050681</td>
                <td>杨眉</td>
                <td>13511050681</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">136</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-12-29</td>
            </tr>
            <tr data="13520512951">
                <td class="tdAlignCenter">9</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13520512951</td>
                <td>陶滔</td>
                <td>13520512951</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">0</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2017-04-26</td>
            </tr>
            <tr data="13545886432">
                <td class="tdAlignCenter">10</td>
                <td class="tdAlignCenter">
                    <span class="operation2 btnShowDetail edit">编辑</span>
                        <span class="operation2 btnShowHistory edit">对账</span>
                        <span class="operation2 btnShowHistory edit ticket">会员历史</span>
                </td>
                <td>13545886432</td>
                <td>高璐</td>
                <td>13545886432</td>
                <td>无</td>
                <td class="tdAlignRight">0.00</td>
                <td class="tdAlignRight">191.25</td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td class="tdAlignCenter">
                        0
                </td>
                <td>光与茶英蓝店</td>
                <td class="tdAlignCenter">2016-12-16</td>
            </tr>
</tbody>"
}'''
class MemberOffLineSpider(scrapy.Spider):
    name = 'member_offline'
    start_urls = ["http://www.baidu.com"]

    # def parse(self, response):
    #     item = PospalCustomerItem()
    #
    #     item['member_number'] = '122'
    #     item['real_name'] = '张大宇'
    #     item['member_point'] = '200'
    #     item['mobile'] = '15652268888'
    #     item['is_enabled'] = '1'
    #     item['is_dealed'] = '0'
    #     item['create_time'] = '2017-11-08 12:00:00'
    #     item['modify_time'] = '2017-11-08 12:00:00'
    #
    #     yield item # 返回item,这时会自动解析item

    def parse(self, response):
        html = etree.HTML(html_content)
        trs = html.xpath('//tbody/tr') # tbody/trs
        for tr in trs:
            # print(tr.xpath('td[3]/text()')[0])#
            # print(tr.xpath('td[4]/text()')[0])#姓名
            # print(tr.xpath('td[5]/text()')[0])#手机
            item = PospalCustomerItem()
            item['member_number'] = tr.xpath('td[3]/text()')[0]
            item['real_name'] = tr.xpath('td[4]/text()')[0]
            item['mobile'] = tr.xpath('td[5]/text()')[0]
            item['member_point'] = tr.xpath('td[8]/text()')[0]
            item['is_enabled'] = '1'
            item['is_dealed'] = '0'
            item['create_time'] = '2017-11-08 12:00:00'
            item['modify_time'] = '2017-11-08 12:00:00'
            yield  item