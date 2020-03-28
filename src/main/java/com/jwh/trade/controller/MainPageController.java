/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:MainPageController.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

    @RequestMapping("/sell")
    public String sell(){
        return "sell";
    }

    @RequestMapping("/manage")
    public String manage(){
        return "manage";
    }

    @RequestMapping("/filter")
    public String filter(){
        return "filter";
    }

}
