/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:SecondLevelService.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.service;

import com.alibaba.fastjson.JSONObject;
import com.jwh.trade.dao.SecondLevelMapper;
import com.jwh.trade.javabean.SecondLevel;
import com.jwh.trade.javabean.SecondLevelExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

@Service
public class SecondLevelService {

    private SecondLevelMapper secondLevelMapper;

    private RedisTemplate<String, String> redisTemplate;

    @Autowired
    public void setRedisTemplate(RedisTemplate<String, String> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    @Autowired
    public void setSecondLevelMapper(SecondLevelMapper secondLevelMapper) {
        this.secondLevelMapper = secondLevelMapper;
    }

    public List<SecondLevel> getById(Integer id) {
        List<SecondLevel> list = new LinkedList<>();
        if (redisTemplate.hasKey("second_level_" + id)) {
            Set<String> range = redisTemplate.opsForZSet().range("second_level_" + id, 0, -1);
            if (range != null) {
                list.addAll(JSONObject.parseArray(range.toString(), SecondLevel.class));
            }
            //System.out.println("secondLevel从Redis查询");
        } else {
            SecondLevelExample example = new SecondLevelExample();
            example.setOrderByClause("second_level_id");
            SecondLevelExample.Criteria criteria = example.createCriteria();
            criteria.andFirstLevelIdEqualTo(id);
            list = secondLevelMapper.selectByExample(example);
            for (SecondLevel each : list) {
                redisTemplate.opsForZSet().add("second_level_" + id,
                        JSONObject.toJSONString(each), each.getSecondLevelId());
            }
            //System.out.println("secondLevel从数据库查询");
        }
        return list;
    }
}
