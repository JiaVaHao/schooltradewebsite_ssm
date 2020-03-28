/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:FilterPageController.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jwh.trade.javabean.Goods;
import com.jwh.trade.javabean.Msg;
import com.jwh.trade.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class FilterPageController {

    GoodsService goodsService;

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @ResponseBody
    @RequestMapping("/querygoodsbyfilter")
    public Msg queryGoodsALL(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Goods goods) {
        //分页查询，要查的对象紧跟pageHelper，每次显示10行
        //System.out.println(goods);
        PageHelper.startPage(pn, 10);
        List<Goods> list = goodsService.getAllByFilter(goods);
        //包装分页结果，每次显示五页
        PageInfo<Goods> pageInfo = new PageInfo<>(list, 10);
        return Msg.success().add("pageInfo", pageInfo);
    }

    @RequestMapping("/detail")
    public String detail(Integer goodsId){
        DetailPageController.goodsId = goodsId;
        return "detail";
    }
}
