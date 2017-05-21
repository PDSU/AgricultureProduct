package com.wtu.product.model;

public class ProductDescripeValue {
    private Integer id;
    private String value;
    private String updateTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "ProductDescripeValue [id=" + id + ", value=" + value + ", updateTime=" + updateTime + "]";
	}
}
