/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:FirstLevelMapper.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.dao;

import com.jwh.trade.javabean.FirstLevel;
import com.jwh.trade.javabean.FirstLevelExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FirstLevelMapper {
    long countByExample(FirstLevelExample example);

    int deleteByExample(FirstLevelExample example);

    int deleteByPrimaryKey(Integer firstLevelId);

    int insert(FirstLevel record);

    int insertSelective(FirstLevel record);

    List<FirstLevel> selectByExample(FirstLevelExample example);

    FirstLevel selectByPrimaryKey(Integer firstLevelId);

    int updateByExampleSelective(@Param("record") FirstLevel record, @Param("example") FirstLevelExample example);

    int updateByExample(@Param("record") FirstLevel record, @Param("example") FirstLevelExample example);

    int updateByPrimaryKeySelective(FirstLevel record);

    int updateByPrimaryKey(FirstLevel record);
}