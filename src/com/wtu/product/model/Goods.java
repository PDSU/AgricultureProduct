package com.wtu.product.model;

import java.sql.Date;

public class Goods {

	private Integer goodsId;
	private Integer userId;
	private String goodsName;
	private String picture;
	private Double price;
	private String unit;
	private String type;
	private String description;
    private Date createTime;
    private Date updateTime;
    private Boolean isDeleted;

    public Integer getGoodsId() {
        return goodsId;
    }
    public void setGoosId(Integer goodsId) {
        this.goodsId = goodsId;
    }
    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getGoodsName() {
        return goodsName;
    }
    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }
    public String getPicture() {
        return picture;
    }
    public void setPicture(String picture) {
        this.picture = picture;
    }
    public Double getPrice() {
        return price;
    }
    public void setPrice(Double price) {
        this.price = price;
    }
    public String getUnit() {
        return unit;
    }
    public void setUnit(String unit) {
        this.unit = unit;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public Date getCreateTime() {
        return createTime;
    }
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    public Date getUpdateTime() {
        return updateTime;
    }
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    public Boolean getIsDeleted() {
        return isDeleted;
    }
    public void setIsDeleted(Boolean isDeleted) {
        this.isDeleted = isDeleted;
    }


}
