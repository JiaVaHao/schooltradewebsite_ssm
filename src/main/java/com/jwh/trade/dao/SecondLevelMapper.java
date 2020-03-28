/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:SecondLevelMapper.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.dao;

import com.jwh.trade.javabean.SecondLevel;
import com.jwh.trade.javabean.SecondLevelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SecondLevelMapper {
    long countByExample(SecondLevelExample example);

    int deleteByExample(SecondLevelExample example);

    int deleteByPrimaryKey(Integer secondLevelId);

    int insert(SecondLevel record);

    int insertSelective(SecondLevel record);

    List<SecondLevel> selectByExample(SecondLevelExample example);

    SecondLevel selectByPrimaryKey(Integer secondLevelId);

    int updateByExampleSelective(@Param("record") SecondLevel record, @Param("example") SecondLevelExample example);

    int updateByExample(@Param("record") SecondLevel record, @Param("example") SecondLevelExample example);

    int updateByPrimaryKeySelective(SecondLevel record);

    int updateByPrimaryKey(SecondLevel record);
}