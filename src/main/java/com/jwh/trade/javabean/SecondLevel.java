/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:SecondLevel.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.javabean;

import java.io.Serializable;

public class SecondLevel  implements Serializable {
    private Integer secondLevelId;

    private String secondLevelName;

    private Integer firstLevelId;

    public Integer getSecondLevelId() {
        return secondLevelId;
    }

    public void setSecondLevelId(Integer secondLevelId) {
        this.secondLevelId = secondLevelId;
    }

    public String getSecondLevelName() {
        return secondLevelName;
    }

    public void setSecondLevelName(String secondLevelName) {
        this.secondLevelName = secondLevelName == null ? null : secondLevelName.trim();
    }

    public Integer getFirstLevelId() {
        return firstLevelId;
    }

    public void setFirstLevelId(Integer firstLevelId) {
        this.firstLevelId = firstLevelId;
    }

    @Override
    public String toString() {
        return "SecondLevel{" +
                "secondLevelId=" + secondLevelId +
                ", secondLevelName='" + secondLevelName + '\'' +
                ", firstLevelId=" + firstLevelId +
                '}';
    }
}