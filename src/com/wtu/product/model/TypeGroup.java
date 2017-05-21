package com.wtu.product.model;

import java.util.List;

public class TypeGroup {
    public Integer id;
    public String group;
    public String updateTime;
    public List<GoodsType> goodsType;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public List<GoodsType> getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(List<GoodsType> goodsType) {
		this.goodsType = goodsType;
	}
	@Override
	public String toString() {
		return "TypeGroup [id=" + id + ", group=" + group + ", updateTime=" + updateTime + ", goodsType=" + goodsType
				+ "]";
	}
}
