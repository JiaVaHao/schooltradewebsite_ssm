/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:SellPageController.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.controller;

import com.jwh.trade.javabean.FirstLevel;
import com.jwh.trade.javabean.Goods;
import com.jwh.trade.javabean.Msg;
import com.jwh.trade.javabean.SecondLevel;
import com.jwh.trade.service.FirstLevelService;
import com.jwh.trade.service.GoodsService;
import com.jwh.trade.service.SecondLevelService;
import com.jwh.trade.utils.FileHandlerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SellPageController {

    private FirstLevelService firstLevelService;
    private SecondLevelService secondLevelService;
    private GoodsService goodsService;

    @Autowired
    public void setDepartmentService(FirstLevelService firstLevelService) {
        this.firstLevelService = firstLevelService;
    }

    @Autowired
    public void setSecondLevelService(SecondLevelService secondLevelService) {
        this.secondLevelService = secondLevelService;
    }

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @ResponseBody
    @RequestMapping("/firstlevels")
    public Msg getFirstLevels() {
        List<FirstLevel> firstLevels = firstLevelService.getAll();
        return Msg.success().add("firstlevels", firstLevels);
    }

    @ResponseBody
    @RequestMapping("/secondlevels/{id}")
    public Msg getSecondLevelsById(@PathVariable("id") Integer id) {
        List<SecondLevel> secondLevels = secondLevelService.getById(id);
        return Msg.success().add("secondlevels", secondLevels);
    }

    @ResponseBody
    @RequestMapping(value = "/addgoods",method = RequestMethod.POST)
    public Msg addGoods(@Valid Goods goods, BindingResult result,
                        @RequestParam("show_pic") Integer num,
                        @RequestParam("group_pic") MultipartFile[] groupImg,
                        HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        if (result.hasErrors()) {
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Msg.fail().add("errorFields", map);
        } else {
            goods.setCreateTime(LocalDateTime.now());
            if(!FileHandlerUtil.uploadFiles(request,goods,num,groupImg,map)){
                return Msg.fail().add("errorFields", map);
            }
            goods.setGoodsVisible(1);
            goods.setStudentId(17851110);
            System.out.println(goods);
            goodsService.saveGoods(goods);
            return Msg.success();
        }
    }
}
