package com.wtu.product.model;

import java.util.List;

public class GoodsType {
    public Integer id;
    public String type;
    public String updateTime;
    public List<ProductType> productTypes;
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public List<ProductType> getProductTypes() {
		return productTypes;
	}
	public void setProductTypes(List<ProductType> productTypes) {
		this.productTypes = productTypes;
	}
	@Override
	public String toString() {
		return "GoodsType [id=" + id + ", type=" + type + ", updateTime=" + updateTime + ", productTypes="
				+ productTypes + "]";
	}
}
