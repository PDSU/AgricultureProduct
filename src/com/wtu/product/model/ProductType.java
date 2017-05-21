package com.wtu.product.model;

public class ProductType {
    public Integer id;
    public String type;
    public String updateTime;
    
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
	@Override
	public String toString() {
		return "ProductType [id=" + id + ", type=" + type + ", updateTime=" + updateTime + "]";
	}
}
