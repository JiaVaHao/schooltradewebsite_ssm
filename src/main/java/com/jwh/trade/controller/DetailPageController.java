/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:DetailPageController.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.controller;

import com.jwh.trade.javabean.Goods;
import com.jwh.trade.javabean.Msg;
import com.jwh.trade.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DetailPageController {

    static Integer goodsId = null;

    GoodsService goodsService;

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @ResponseBody
    @RequestMapping("/querygoodsbyid")
    public Msg queryGoodsById() {
        //System.out.println(goodsId);
        Goods goods = goodsService.getGoodsById(goodsId);
        return Msg.success().add("goods", goods);
    }
}
