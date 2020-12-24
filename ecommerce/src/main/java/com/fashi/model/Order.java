package com.fashi.model;

import java.sql.Timestamp;

//status nên là boolean hay Integer =>
//coupon ở đây có hợp lý vl
//userId ở đây có hợp lý không, nếu có thì Nullable = true; =>
public class Order extends AbstractModel{
	private String code;
	private Integer totalSellPrice;
	private Integer totalDiscount;
	private Integer totalMoney;
	private String note;
	private boolean status;	// 1 Cho xu ly
							// 2 Da Tiep nhan
							// 3 Dang gui
							// 4 Hoan tat
							// 5 Huy
	private Integer couponId;
	private Integer customerId;
	private Integer userId; // userid là nhân viên bán hàng -> not null
	private Timestamp dateSell;

}
