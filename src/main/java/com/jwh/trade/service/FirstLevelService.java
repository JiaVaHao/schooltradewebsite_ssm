/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:FirstLevelService.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.service;

import com.alibaba.fastjson.JSONObject;
import com.jwh.trade.dao.FirstLevelMapper;
import com.jwh.trade.javabean.FirstLevel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class FirstLevelService {

    private FirstLevelMapper firstLevelMapper;

    private RedisTemplate<String,String> redisTemplate;

    @Autowired
    public void setFirstLevelMapper(FirstLevelMapper firstLevelMapper) {
        this.firstLevelMapper = firstLevelMapper;
    }

    @Autowired
    public void setRedisTemplate(RedisTemplate<String, String> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    public List<FirstLevel> getAll() {
        List<FirstLevel> list=new ArrayList<>();
        if (redisTemplate.hasKey("first_level")) {
            Set<String> range = redisTemplate.opsForZSet().range("first_level", 0, -1);
            if (range != null) {
                list.addAll(JSONObject.parseArray(range.toString(), FirstLevel.class));
            }
            //System.out.println("firstLevel从Redis查询");
        } else {
            list = firstLevelMapper.selectByExample(null);
            System.out.println(list);
            for (FirstLevel each : list) {
                redisTemplate.opsForZSet().add("first_level",
                        JSONObject.toJSONString(each), each.getFirstLevelId());
            }
            //System.out.println("firstLevel从数据库查询");
        }
        return list;
    }
}
