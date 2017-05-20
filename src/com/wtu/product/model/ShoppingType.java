package com.wtu.product.model;

public class ShoppingType {
	private Integer typeId;
	private String typeName;
	private String updateTime;
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "ShoppingType [typeId=" + typeId + ", typeName=" + typeName + ", updateTime=" + updateTime + "]";
	}
}
