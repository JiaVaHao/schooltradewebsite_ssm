/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:GoodsExample.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.javabean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GoodsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GoodsExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andGoodsIdIsNull() {
            addCriterion("goods_id is null");
            return (Criteria) this;
        }

        public Criteria andGoodsIdIsNotNull() {
            addCriterion("goods_id is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsIdEqualTo(Integer value) {
            addCriterion("goods_id =", value, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdNotEqualTo(Integer value) {
            addCriterion("goods_id <>", value, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdGreaterThan(Integer value) {
            addCriterion("goods_id >", value, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("goods_id >=", value, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdLessThan(Integer value) {
            addCriterion("goods_id <", value, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdLessThanOrEqualTo(Integer value) {
            addCriterion("goods_id <=", value, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdIn(List<Integer> values) {
            addCriterion("goods_id in", values, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdNotIn(List<Integer> values) {
            addCriterion("goods_id not in", values, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdBetween(Integer value1, Integer value2) {
            addCriterion("goods_id between", value1, value2, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("goods_id not between", value1, value2, "goodsId");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleIsNull() {
            addCriterion("goods_title is null");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleIsNotNull() {
            addCriterion("goods_title is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleEqualTo(String value) {
            addCriterion("goods_title =", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleNotEqualTo(String value) {
            addCriterion("goods_title <>", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleGreaterThan(String value) {
            addCriterion("goods_title >", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleGreaterThanOrEqualTo(String value) {
            addCriterion("goods_title >=", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleLessThan(String value) {
            addCriterion("goods_title <", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleLessThanOrEqualTo(String value) {
            addCriterion("goods_title <=", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleLike(String value) {
            addCriterion("goods_title like", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleNotLike(String value) {
            addCriterion("goods_title not like", value, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleIn(List<String> values) {
            addCriterion("goods_title in", values, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleNotIn(List<String> values) {
            addCriterion("goods_title not in", values, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleBetween(String value1, String value2) {
            addCriterion("goods_title between", value1, value2, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andGoodsTitleNotBetween(String value1, String value2) {
            addCriterion("goods_title not between", value1, value2, "goodsTitle");
            return (Criteria) this;
        }

        public Criteria andShowImgIsNull() {
            addCriterion("show_img is null");
            return (Criteria) this;
        }

        public Criteria andShowImgIsNotNull() {
            addCriterion("show_img is not null");
            return (Criteria) this;
        }

        public Criteria andShowImgEqualTo(String value) {
            addCriterion("show_img =", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgNotEqualTo(String value) {
            addCriterion("show_img <>", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgGreaterThan(String value) {
            addCriterion("show_img >", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgGreaterThanOrEqualTo(String value) {
            addCriterion("show_img >=", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgLessThan(String value) {
            addCriterion("show_img <", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgLessThanOrEqualTo(String value) {
            addCriterion("show_img <=", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgLike(String value) {
            addCriterion("show_img like", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgNotLike(String value) {
            addCriterion("show_img not like", value, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgIn(List<String> values) {
            addCriterion("show_img in", values, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgNotIn(List<String> values) {
            addCriterion("show_img not in", values, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgBetween(String value1, String value2) {
            addCriterion("show_img between", value1, value2, "showImg");
            return (Criteria) this;
        }

        public Criteria andShowImgNotBetween(String value1, String value2) {
            addCriterion("show_img not between", value1, value2, "showImg");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdIsNull() {
            addCriterion("first_level_id is null");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdIsNotNull() {
            addCriterion("first_level_id is not null");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdEqualTo(Integer value) {
            addCriterion("c.first_level_id =", value, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdNotEqualTo(Integer value) {
            addCriterion("first_level_id <>", value, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdGreaterThan(Integer value) {
            addCriterion("first_level_id >", value, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("first_level_id >=", value, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdLessThan(Integer value) {
            addCriterion("first_level_id <", value, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdLessThanOrEqualTo(Integer value) {
            addCriterion("first_level_id <=", value, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdIn(List<Integer> values) {
            addCriterion("first_level_id in", values, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdNotIn(List<Integer> values) {
            addCriterion("first_level_id not in", values, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdBetween(Integer value1, Integer value2) {
            addCriterion("first_level_id between", value1, value2, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andFirstLevelIdNotBetween(Integer value1, Integer value2) {
            addCriterion("first_level_id not between", value1, value2, "firstLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdIsNull() {
            addCriterion("second_level_id is null");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdIsNotNull() {
            addCriterion("second_level_id is not null");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdEqualTo(Integer value) {
            addCriterion("c.second_level_id =", value, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdNotEqualTo(Integer value) {
            addCriterion("second_level_id <>", value, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdGreaterThan(Integer value) {
            addCriterion("second_level_id >", value, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("second_level_id >=", value, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdLessThan(Integer value) {
            addCriterion("second_level_id <", value, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdLessThanOrEqualTo(Integer value) {
            addCriterion("second_level_id <=", value, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdIn(List<Integer> values) {
            addCriterion("second_level_id in", values, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdNotIn(List<Integer> values) {
            addCriterion("second_level_id not in", values, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdBetween(Integer value1, Integer value2) {
            addCriterion("second_level_id between", value1, value2, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andSecondLevelIdNotBetween(Integer value1, Integer value2) {
            addCriterion("second_level_id not between", value1, value2, "secondLevelId");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeIsNull() {
            addCriterion("goods_degree is null");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeIsNotNull() {
            addCriterion("goods_degree is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeEqualTo(Integer value) {
            addCriterion("goods_degree =", value, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeNotEqualTo(Integer value) {
            addCriterion("goods_degree <>", value, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeGreaterThan(Integer value) {
            addCriterion("goods_degree >", value, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeGreaterThanOrEqualTo(Integer value) {
            addCriterion("goods_degree >=", value, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeLessThan(Integer value) {
            addCriterion("goods_degree <", value, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeLessThanOrEqualTo(Integer value) {
            addCriterion("goods_degree <=", value, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeIn(List<Integer> values) {
            addCriterion("goods_degree in", values, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeNotIn(List<Integer> values) {
            addCriterion("goods_degree not in", values, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeBetween(Integer value1, Integer value2) {
            addCriterion("goods_degree between", value1, value2, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andGoodsDegreeNotBetween(Integer value1, Integer value2) {
            addCriterion("goods_degree not between", value1, value2, "goodsDegree");
            return (Criteria) this;
        }

        public Criteria andMasterGenderIsNull() {
            addCriterion("master_gender is null");
            return (Criteria) this;
        }

        public Criteria andMasterGenderIsNotNull() {
            addCriterion("master_gender is not null");
            return (Criteria) this;
        }

        public Criteria andMasterGenderEqualTo(Integer value) {
            addCriterion("master_gender =", value, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderNotEqualTo(Integer value) {
            addCriterion("master_gender <>", value, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderGreaterThan(Integer value) {
            addCriterion("master_gender >", value, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderGreaterThanOrEqualTo(Integer value) {
            addCriterion("master_gender >=", value, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderLessThan(Integer value) {
            addCriterion("master_gender <", value, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderLessThanOrEqualTo(Integer value) {
            addCriterion("master_gender <=", value, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderIn(List<Integer> values) {
            addCriterion("master_gender in", values, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderNotIn(List<Integer> values) {
            addCriterion("master_gender not in", values, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderBetween(Integer value1, Integer value2) {
            addCriterion("master_gender between", value1, value2, "masterGender");
            return (Criteria) this;
        }

        public Criteria andMasterGenderNotBetween(Integer value1, Integer value2) {
            addCriterion("master_gender not between", value1, value2, "masterGender");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceIsNull() {
            addCriterion("goods_price is null");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceIsNotNull() {
            addCriterion("goods_price is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceEqualTo(BigDecimal value) {
            addCriterion("goods_price =", value, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceNotEqualTo(BigDecimal value) {
            addCriterion("goods_price <>", value, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceGreaterThan(BigDecimal value) {
            addCriterion("goods_price >", value, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("goods_price >=", value, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceLessThan(BigDecimal value) {
            addCriterion("goods_price <", value, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("goods_price <=", value, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceIn(List<BigDecimal> values) {
            addCriterion("goods_price in", values, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceNotIn(List<BigDecimal> values) {
            addCriterion("goods_price not in", values, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("goods_price between", value1, value2, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andGoodsPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("goods_price not between", value1, value2, "goodsPrice");
            return (Criteria) this;
        }

        public Criteria andTradeTypeIsNull() {
            addCriterion("trade_type is null");
            return (Criteria) this;
        }

        public Criteria andTradeTypeIsNotNull() {
            addCriterion("trade_type is not null");
            return (Criteria) this;
        }

        public Criteria andTradeTypeEqualTo(Integer value) {
            addCriterion("trade_type =", value, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeNotEqualTo(Integer value) {
            addCriterion("trade_type <>", value, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeGreaterThan(Integer value) {
            addCriterion("trade_type >", value, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("trade_type >=", value, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeLessThan(Integer value) {
            addCriterion("trade_type <", value, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeLessThanOrEqualTo(Integer value) {
            addCriterion("trade_type <=", value, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeIn(List<Integer> values) {
            addCriterion("trade_type in", values, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeNotIn(List<Integer> values) {
            addCriterion("trade_type not in", values, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeBetween(Integer value1, Integer value2) {
            addCriterion("trade_type between", value1, value2, "tradeType");
            return (Criteria) this;
        }

        public Criteria andTradeTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("trade_type not between", value1, value2, "tradeType");
            return (Criteria) this;
        }

        public Criteria andMasterQqIsNull() {
            addCriterion("master_qq is null");
            return (Criteria) this;
        }

        public Criteria andMasterQqIsNotNull() {
            addCriterion("master_qq is not null");
            return (Criteria) this;
        }

        public Criteria andMasterQqEqualTo(String value) {
            addCriterion("master_qq =", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqNotEqualTo(String value) {
            addCriterion("master_qq <>", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqGreaterThan(String value) {
            addCriterion("master_qq >", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqGreaterThanOrEqualTo(String value) {
            addCriterion("master_qq >=", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqLessThan(String value) {
            addCriterion("master_qq <", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqLessThanOrEqualTo(String value) {
            addCriterion("master_qq <=", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqLike(String value) {
            addCriterion("master_qq like", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqNotLike(String value) {
            addCriterion("master_qq not like", value, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqIn(List<String> values) {
            addCriterion("master_qq in", values, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqNotIn(List<String> values) {
            addCriterion("master_qq not in", values, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqBetween(String value1, String value2) {
            addCriterion("master_qq between", value1, value2, "masterQq");
            return (Criteria) this;
        }

        public Criteria andMasterQqNotBetween(String value1, String value2) {
            addCriterion("master_qq not between", value1, value2, "masterQq");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeIsNull() {
            addCriterion("goods_describe is null");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeIsNotNull() {
            addCriterion("goods_describe is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeEqualTo(String value) {
            addCriterion("goods_describe =", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeNotEqualTo(String value) {
            addCriterion("goods_describe <>", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeGreaterThan(String value) {
            addCriterion("goods_describe >", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("goods_describe >=", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeLessThan(String value) {
            addCriterion("goods_describe <", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeLessThanOrEqualTo(String value) {
            addCriterion("goods_describe <=", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeLike(String value) {
            addCriterion("goods_describe like", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeNotLike(String value) {
            addCriterion("goods_describe not like", value, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeIn(List<String> values) {
            addCriterion("goods_describe in", values, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeNotIn(List<String> values) {
            addCriterion("goods_describe not in", values, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeBetween(String value1, String value2) {
            addCriterion("goods_describe between", value1, value2, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andGoodsDescribeNotBetween(String value1, String value2) {
            addCriterion("goods_describe not between", value1, value2, "goodsDescribe");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andGroupImgIsNull() {
            addCriterion("group_img is null");
            return (Criteria) this;
        }

        public Criteria andGroupImgIsNotNull() {
            addCriterion("group_img is not null");
            return (Criteria) this;
        }

        public Criteria andGroupImgEqualTo(String value) {
            addCriterion("group_img =", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgNotEqualTo(String value) {
            addCriterion("group_img <>", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgGreaterThan(String value) {
            addCriterion("group_img >", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgGreaterThanOrEqualTo(String value) {
            addCriterion("group_img >=", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgLessThan(String value) {
            addCriterion("group_img <", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgLessThanOrEqualTo(String value) {
            addCriterion("group_img <=", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgLike(String value) {
            addCriterion("group_img like", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgNotLike(String value) {
            addCriterion("group_img not like", value, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgIn(List<String> values) {
            addCriterion("group_img in", values, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgNotIn(List<String> values) {
            addCriterion("group_img not in", values, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgBetween(String value1, String value2) {
            addCriterion("group_img between", value1, value2, "groupImg");
            return (Criteria) this;
        }

        public Criteria andGroupImgNotBetween(String value1, String value2) {
            addCriterion("group_img not between", value1, value2, "groupImg");
            return (Criteria) this;
        }

        public Criteria andBrowseNumIsNull() {
            addCriterion("browse_num is null");
            return (Criteria) this;
        }

        public Criteria andBrowseNumIsNotNull() {
            addCriterion("browse_num is not null");
            return (Criteria) this;
        }

        public Criteria andBrowseNumEqualTo(Integer value) {
            addCriterion("browse_num =", value, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumNotEqualTo(Integer value) {
            addCriterion("browse_num <>", value, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumGreaterThan(Integer value) {
            addCriterion("browse_num >", value, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("browse_num >=", value, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumLessThan(Integer value) {
            addCriterion("browse_num <", value, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumLessThanOrEqualTo(Integer value) {
            addCriterion("browse_num <=", value, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumIn(List<Integer> values) {
            addCriterion("browse_num in", values, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumNotIn(List<Integer> values) {
            addCriterion("browse_num not in", values, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumBetween(Integer value1, Integer value2) {
            addCriterion("browse_num between", value1, value2, "browseNum");
            return (Criteria) this;
        }

        public Criteria andBrowseNumNotBetween(Integer value1, Integer value2) {
            addCriterion("browse_num not between", value1, value2, "browseNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumIsNull() {
            addCriterion("favorites_num is null");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumIsNotNull() {
            addCriterion("favorites_num is not null");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumEqualTo(Integer value) {
            addCriterion("favorites_num =", value, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumNotEqualTo(Integer value) {
            addCriterion("favorites_num <>", value, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumGreaterThan(Integer value) {
            addCriterion("favorites_num >", value, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("favorites_num >=", value, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumLessThan(Integer value) {
            addCriterion("favorites_num <", value, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumLessThanOrEqualTo(Integer value) {
            addCriterion("favorites_num <=", value, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumIn(List<Integer> values) {
            addCriterion("favorites_num in", values, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumNotIn(List<Integer> values) {
            addCriterion("favorites_num not in", values, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumBetween(Integer value1, Integer value2) {
            addCriterion("favorites_num between", value1, value2, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andFavoritesNumNotBetween(Integer value1, Integer value2) {
            addCriterion("favorites_num not between", value1, value2, "favoritesNum");
            return (Criteria) this;
        }

        public Criteria andStudentIdEqualTo(Integer value) {
            addCriterion("c.student_id =", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andGoodsVisibleEqualTo(Integer value) {
            addCriterion("goods_visible =", value, "goodsVisible");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}