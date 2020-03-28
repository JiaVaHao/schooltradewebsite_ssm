/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:FirstLevel.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.javabean;

import java.io.Serializable;

public class FirstLevel implements Serializable {
    private Integer firstLevelId;

    private String firstLevelName;

    public Integer getFirstLevelId() {
        return firstLevelId;
    }

    public void setFirstLevelId(Integer firstLevelId) {
        this.firstLevelId = firstLevelId;
    }

    public String getFirstLevelName() {
        return firstLevelName;
    }

    public void setFirstLevelName(String firstLevelName) {
        this.firstLevelName = firstLevelName == null ? null : firstLevelName.trim();
    }

    @Override
    public String toString() {
        return "FirstLevel{" +
                "firstLevelId=" + firstLevelId +
                ", firstLevelName='" + firstLevelName + '\'' +
                '}';
    }
}