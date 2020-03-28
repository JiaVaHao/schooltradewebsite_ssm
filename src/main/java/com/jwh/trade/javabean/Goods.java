/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:Goods.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.javabean;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;

public class Goods implements Serializable {

    private Integer goodsId;

    @Pattern(regexp = "^[\u2E80-\u9FFFa-zA-Z0-9_-]{1,20}$"
            ,message = "请输入1～20个汉字、数字或英文")
    private String goodsTitle;

    private String showImg;

    private Integer firstLevelId;

    private Integer secondLevelId;

    private Integer goodsDegree;

    private Integer masterGender;

    @DecimalMin(value = "1.00",message = "价格必须是1～99999之间")
    @DecimalMax(value = "99999.99",message = "价格必须是1～99999之间")
    private BigDecimal goodsPrice;

    private Integer tradeType;

    @Pattern(regexp = "^[1-9]*[1-9][0-9]*$",message = "请输入正确的QQ号")
    private String masterQq;

    @Pattern(regexp = "^[\u2E80-\u9FFFa-zA-Z0-9_-]{0,200}$",message = "字数不能超过200字")
    private String goodsDescribe;

    private LocalDateTime createTime;

    private String groupImg;

    private Integer browseNum;

    private Integer favoritesNum;

    private FirstLevel firstLevel;

    private SecondLevel secondLevel;

    private Integer studentId;

    private Integer goodsVisible;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsTitle() {
        return goodsTitle;
    }

    public void setGoodsTitle(String goodsTitle) {
        this.goodsTitle = goodsTitle == null ? null : goodsTitle.trim();
    }

    public String getShowImg() {
        return showImg;
    }

    public void setShowImg(String showImg) {
        this.showImg = showImg == null ? null : showImg.trim();
    }

    public Integer getFirstLevelId() {
        return firstLevelId;
    }

    public void setFirstLevelId(Integer firstLevelId) {
        this.firstLevelId = firstLevelId;
    }

    public Integer getSecondLevelId() {
        return secondLevelId;
    }

    public void setSecondLevelId(Integer secondLevelId) {
        this.secondLevelId = secondLevelId;
    }

    public Integer getGoodsDegree() {
        return goodsDegree;
    }

    public void setGoodsDegree(Integer goodsDegree) {
        this.goodsDegree = goodsDegree;
    }

    public Integer getMasterGender() {
        return masterGender;
    }

    public void setMasterGender(Integer masterGender) {
        this.masterGender = masterGender;
    }

    public BigDecimal getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(BigDecimal goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getTradeType() {
        return tradeType;
    }

    public void setTradeType(Integer tradeType) {
        this.tradeType = tradeType;
    }

    public String getMasterQq() {
        return masterQq;
    }

    public void setMasterQq(String masterQq) {
        this.masterQq = masterQq == null ? null : masterQq.trim();
    }

    public String getGoodsDescribe() {
        return goodsDescribe;
    }

    public void setGoodsDescribe(String goodsDescribe) {
        this.goodsDescribe = goodsDescribe == null ? null : goodsDescribe.trim();
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public String getGroupImg() {
        return groupImg;
    }

    public void setGroupImg(String groupImg) {
        this.groupImg = groupImg == null ? null : groupImg.trim();
    }

    public Integer getBrowseNum() {
        return browseNum;
    }

    public void setBrowseNum(Integer browseNum) {
        this.browseNum = browseNum;
    }

    public Integer getFavoritesNum() {
        return favoritesNum;
    }

    public void setFavoritesNum(Integer favoritesNum) {
        this.favoritesNum = favoritesNum;
    }

    public FirstLevel getFirstLevel() {
        return firstLevel;
    }

    public void setFirstLevel(FirstLevel firstLevel) {
        this.firstLevel = firstLevel;
    }

    public SecondLevel getSecondLevel() {
        return secondLevel;
    }

    public void setSecondLevel(SecondLevel secondLevel) {
        this.secondLevel = secondLevel;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getGoodsVisible() {
        return goodsVisible;
    }

    public void setGoodsVisible(Integer goodsVisible) {
        this.goodsVisible = goodsVisible;
    }

    public Goods() {
    }

    public Goods(@Pattern(regexp = "^[\u2E80-\u9FFFa-zA-Z0-9_-]{1,20}$"
            , message = "请输入1～20个汉字、数字或英文") String goodsTitle, Integer firstLevelId, Integer secondLevelId, Integer goodsDegree, Integer masterGender, Integer tradeType) {
        this.goodsTitle = goodsTitle;
        this.firstLevelId = firstLevelId;
        this.secondLevelId = secondLevelId;
        this.goodsDegree = goodsDegree;
        this.masterGender = masterGender;
        this.tradeType = tradeType;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsId=" + goodsId +
                ", goodsTitle='" + goodsTitle + '\'' +
                ", showImg='" + showImg + '\'' +
                ", firstLevelId=" + firstLevelId +
                ", secondLevelId=" + secondLevelId +
                ", goodsDegree=" + goodsDegree +
                ", masterGender=" + masterGender +
                ", goodsPrice=" + goodsPrice +
                ", tradeType=" + tradeType +
                ", masterQq='" + masterQq + '\'' +
                ", goodsDescribe='" + goodsDescribe + '\'' +
                ", createTime=" + createTime +
                ", groupImg='" + groupImg + '\'' +
                ", browseNum=" + browseNum +
                ", favoritesNum=" + favoritesNum +
                ", studentId=" + studentId +
                '}';
    }
}