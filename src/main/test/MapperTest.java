/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:MapperTest.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

import com.jwh.trade.dao.GoodsMapper;
import com.jwh.trade.javabean.Goods;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Random;
import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    GoodsMapper goodsMapper;
    @Autowired
    SqlSession sqlSession;

    @Test
    public void test() {

        //执行批量操作
        goodsMapper = sqlSession.getMapper(GoodsMapper.class);
        int firstLevelId, secondLevelId, goodsDegree, masterGender, goodsPrice, tradeType;
        for (int i = 0; i < 30; i++) {
            firstLevelId = new Random().nextInt(8);
            secondLevelId = new Random().nextInt(55);
            goodsDegree = new Random().nextInt(4);
            masterGender = new Random().nextInt(2);
            tradeType = new Random().nextInt(3);
            String uid = UUID.randomUUID().toString();
            goodsMapper.insertSelective(new Goods(uid.substring(0, 6), firstLevelId, secondLevelId, goodsDegree, masterGender, tradeType));
        }
    }
}
