package com.wtu.product.model;

import java.util.List;

public class ProductDescripe {
    private Integer id;
    private String descripe;
    private String updateTime;
    private List<ProductDescripeValue> values;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDescripe() {
		return descripe;
	}
	public void setDescripe(String descripe) {
		this.descripe = descripe;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public List<ProductDescripeValue> getValues() {
		return values;
	}
	public void setValues(List<ProductDescripeValue> values) {
		this.values = values;
	}
	@Override
	public String toString() {
		return "ProductDescripe [id=" + id + ", descripe=" + descripe + ", updateTime=" + updateTime + ", values="
				+ values + "]";
	}
}
