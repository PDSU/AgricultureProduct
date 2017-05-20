package com.wtu.product.model;

public class ShoppingAddress {
    private Integer addressId;
    private String address;
    private String updateTime;
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "ShippingAddress [addressId=" + addressId + ", address=" + address + ", updateTime=" + updateTime + "]";
	}
}
