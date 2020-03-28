/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:GoodsService.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.service;

import com.alibaba.fastjson.JSONObject;
import com.jwh.trade.dao.GoodsMapper;
import com.jwh.trade.javabean.Goods;
import com.jwh.trade.javabean.GoodsExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.Cursor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ScanOptions;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class GoodsService {

    private GoodsMapper goodsMapper;

    private RedisTemplate<String, String> redisTemplate;

    private ZSetOperations<String, Object> opsForZSet;

    @Autowired
    public void setRedisTemplate(RedisTemplate<String, String> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    @Autowired
    public void setGoodsMapper(GoodsMapper goodsMapper) {
        this.goodsMapper = goodsMapper;
    }

    public void saveGoods(Goods goods) {
        goodsMapper.insertSelective(goods);
    }

    public List<Goods> getAllByFilter(Goods goods) {
        List<Goods> list = new ArrayList<>();
        System.out.println(goods);
        Cursor<ZSetOperations.TypedTuple<String>> cursor;
        if (redisTemplate.hasKey("goods")) {
            Goods redisGoods;
            cursor = redisTemplate.opsForZSet().scan("goods", ScanOptions.NONE);
            while (cursor.hasNext()) {
                ZSetOperations.TypedTuple<String> item = cursor.next();
                redisGoods = JSONObject.parseObject(item.getValue(), Goods.class);
                if ((goods.getFirstLevelId() == 0 || redisGoods.getFirstLevelId().equals(goods.getFirstLevelId()))
                        && (goods.getSecondLevelId() == 0 || goods.getSecondLevelId() == null || redisGoods.getSecondLevelId().equals(goods.getSecondLevelId()))
                        && (goods.getMasterGender() == 0 || redisGoods.getMasterGender().equals(goods.getMasterGender()))
                        && (goods.getTradeType() == 0 || redisGoods.getTradeType().equals(goods.getTradeType()))
                        && (goods.getGoodsDegree() == 0 || redisGoods.getGoodsDegree().equals(goods.getGoodsDegree())))
                    list.add(redisGoods);
            }
            try {
                cursor.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            //System.out.println("goods从Redis查询");
        } else {
            GoodsExample example = new GoodsExample();
            example.setOrderByClause("goods_id");
            GoodsExample.Criteria criteria = example.createCriteria();
            criteria.andGoodsVisibleEqualTo(1);
            if (goods.getFirstLevelId() != 0 && goods.getFirstLevelId() != null) {
                criteria.andFirstLevelIdEqualTo(goods.getFirstLevelId());
                if (goods.getSecondLevelId() != 0 && goods.getSecondLevelId() != null) {
                    criteria.andSecondLevelIdEqualTo(goods.getSecondLevelId());
                }
            }
            if (goods.getGoodsDegree() != 0 && goods.getGoodsDegree() != null) {
                criteria.andGoodsDegreeEqualTo(goods.getGoodsDegree());
            }
            if (goods.getMasterGender() != 0 && goods.getMasterGender() != null) {
                criteria.andMasterGenderEqualTo(goods.getMasterGender());
            }
            if (goods.getTradeType() != 0 && goods.getTradeType() != null) {
                criteria.andTradeTypeEqualTo(goods.getTradeType());
            }
            list = goodsMapper.selectByExampleWithLevelName(example);
            for (Goods each : list) {
                redisTemplate.opsForZSet().add("goods",
                        JSONObject.toJSONString(each), each.getGoodsId());
            }
            //System.out.println("goods从数据库查询");
        }
        return list;
    }

    public Goods getGoodsById(Integer id) {
        return goodsMapper.selectByPrimaryKeyWithLevelName(id);
    }

    public List<Goods> getPublishGoodsByStudentId(HttpSession session) {
        GoodsExample example = new GoodsExample();
        example.setOrderByClause("goods_id");
        GoodsExample.Criteria criteria = example.createCriteria();
        criteria.andGoodsVisibleEqualTo(1);
        criteria.andStudentIdEqualTo(Integer.parseInt(session.getAttribute("studentId").toString()));
        return goodsMapper.selectByExampleWithLevelName(example);
    }

    public List<Goods> getUnderGoodsByStudentId(HttpSession session) {
        GoodsExample example = new GoodsExample();
        example.setOrderByClause("goods_id");
        GoodsExample.Criteria criteria = example.createCriteria();
        criteria.andGoodsVisibleEqualTo(0);
        criteria.andStudentIdEqualTo(Integer.parseInt(session.getAttribute("studentId").toString()));
        return goodsMapper.selectByExampleWithLevelName(example);
    }

    public void updateGoods(Goods goods) {
        goodsMapper.updateByPrimaryKeySelective(goods);
    }

}
