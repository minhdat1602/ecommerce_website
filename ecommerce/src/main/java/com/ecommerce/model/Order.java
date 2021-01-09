package com.ecommerce.model;

import java.sql.Timestamp;

public class Order extends AbstractModel{
	private String code;
	private Integer totalOriginPrice;
	private Integer totalSellPrice;
	private Integer totalDiscount;
	private Integer totalMoney;
	private String note;
	private Integer status;	// 1 Cho xu ly
							// 2 Da Tiep nhan
							// 3 Dang gui
							// 4 Hoan tat
							// 5 Huy
	private Integer couponId;
	private Integer customerId;

	private User customer;

	public String getCode() {
		return code;
	}

	public User getCustomer() {
		return customer;
	}

	public void setCustomer(User customer) {
		this.customer = customer;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getTotalOriginPrice() {
		return totalOriginPrice;
	}

	public void setTotalOriginPrice(Integer totalOriginPrice) {
		this.totalOriginPrice = totalOriginPrice;
	}

	public Integer getTotalSellPrice() {
		return totalSellPrice;
	}

	public void setTotalSellPrice(Integer totalSellPrice) {
		this.totalSellPrice = totalSellPrice;
	}

	public Integer getTotalDiscount() {
		return totalDiscount;
	}

	public void setTotalDiscount(Integer totalDiscount) {
		this.totalDiscount = totalDiscount;
	}

	public Integer getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(Integer totalMoney) {
		this.totalMoney = totalMoney;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getCouponId() {
		return couponId;
	}

	public void setCouponId(Integer couponId) {
		this.couponId = couponId;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Order() {
	}
}
