/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:ManagePageController.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.controller;

import com.jwh.trade.javabean.Goods;
import com.jwh.trade.javabean.Msg;
import com.jwh.trade.service.GoodsService;
import com.jwh.trade.utils.FileHandlerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ManagePageController {

    GoodsService goodsService;

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @ResponseBody
    @RequestMapping(value = "/querypublishgoods", method = RequestMethod.GET)
    public Msg queryPublishGoodsStudentId(HttpSession session) {
        List<Goods> list = goodsService.getPublishGoodsByStudentId(session);
        return Msg.success().add("goods", list);
    }

    @ResponseBody
    @RequestMapping(value = "/queryundergoods", method = RequestMethod.GET)
    public Msg queryUnderGoodsStudentId(HttpSession session) {
        List<Goods> list = goodsService.getUnderGoodsByStudentId(session);
        return Msg.success().add("goods", list);
    }

    @ResponseBody
    @RequestMapping(value = "/goods/{id}", method = RequestMethod.GET)
    public Msg queryGoodsByGoodsId(@PathVariable Integer id) {
        Goods goods = goodsService.getGoodsById(id);
        return Msg.success().add("singleGoods", goods);
    }

    @ResponseBody
    @RequestMapping(value = "/goods/{id}", method = RequestMethod.PUT)
    public Msg updateGoodsByGoodsId(@Valid Goods goods, BindingResult result, @PathVariable Integer id) {
        Map<String, Object> map = new HashMap<>();
        if (result.hasErrors()) {
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Msg.fail().add("errorFields", map);
        } else {
            goods.setGoodsId(id);
            goods.setCreateTime(LocalDateTime.now());
            System.out.println(goods.getCreateTime());
            System.out.println(goods);
            goodsService.updateGoods(goods);
            return Msg.success();
        }
    }

    @ResponseBody
    @RequestMapping(value = "/updatefiles/{id}", method = RequestMethod.POST)
    public Msg updateFiles(@RequestParam("show_pic") Integer num,
                           @RequestParam("group_pic") MultipartFile[] groupImg,
                           HttpServletRequest request, @PathVariable Integer id) {
        Map<String, Object> map = new HashMap<>();
        Goods goods = new Goods();
        goods.setGoodsId(id);
        if (!FileHandlerUtil.deleteFiles(request, id, goodsService)) {
            System.out.println("删除失败");
        }
        if (!FileHandlerUtil.uploadFiles(request, goods, num, groupImg, map)) {
            return Msg.fail().add("errorFields", map);
        }
        System.out.println(goods);
        goodsService.updateGoods(goods);
        return Msg.success();
    }

    @ResponseBody
    @RequestMapping(value = "/undergoods/{id}", method = RequestMethod.PUT)
    public Msg underGoods(@PathVariable Integer id) {
        Goods goods = new Goods();
        goods.setGoodsId(id);
        goods.setGoodsVisible(0);
        goodsService.updateGoods(goods);
        return Msg.success();
    }

    @ResponseBody
    @RequestMapping(value = "/overgoods/{id}", method = RequestMethod.PUT)
    public Msg overGoods(@PathVariable Integer id) {
        Goods goods = new Goods();
        goods.setGoodsId(id);
        goods.setGoodsVisible(1);
        goodsService.updateGoods(goods);
        return Msg.success();
    }
}
