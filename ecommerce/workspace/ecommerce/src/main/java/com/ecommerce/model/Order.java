package com.ecommerce.model;

import java.sql.Timestamp;

//status nên là boolean hay Integer =>
//coupon ở đây có hợp lý vl
//userId ở đây có hợp lý không, nếu có thì Nullable = true; =>
public class Order extends AbstractModel{
	private String code;
	private Integer totalSellPrice;
	private Integer totalDiscount;
	private Integer totalMoney;
	private String status;	// status là boolean ->
	private Integer couponId;
	private Integer customerId;
	private Integer userId; // userid là nhân viên bán hàng -> not null
	private Timestamp dateSell;
	public Order() {
		super();
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
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
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Timestamp getDateSell() {
		return dateSell;
	}
	public void setDateSell(Timestamp dateSell) {
		this.dateSell = dateSell;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
}
