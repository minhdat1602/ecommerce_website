<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--test--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="com.ecommerce.utils.PriceUtils"%>
<%--<jsp:useBean id="dateValue" class="java.util.Date"/>--%>
<%--<jsp:setProperty name="dateValue" property="time" value="${timestampValue}"/>--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết đơn hàng</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-order-page">
	<h3 class="ml-4 mt-3">Chi tiết đơn hàng</h3>
	<div class="content">
		<div
			class="invoice-wrapper rounded border bg-white py-5 px-3 px-md-4 px-lg-5">
			<div class="d-flex justify-content-between">
				<h2 class="text-dark font-weight-medium">Hóa đơn #${order.code}</h2>
				<div class="btn-group">
					<button class="btn btn-sm btn-secondary">
						<i class="mdi mdi-content-save"></i> Save
					</button>
					<button class="btn btn-sm btn-secondary">
						<i class="mdi mdi-printer"></i> Print
					</button>
				</div>
			</div>
			<div class="row pt-5">
				<div class="col-xl-6 col-lg-6">
					<h3 class="text-dark mb-2">Gửi đến:</h3>
					<address>
						Họ Tên: ${order.customer.fullname} <br>
						Địa chỉ: ${order.customer.address} <br>
						Số điện thoại: ${order.customer.phone}
					</address>
				</div>
				<div class="col-xl-6 col-lg-6">
					<h4 class="text-dark mb-2">Chi tiết</h4>
					<address>
						Mã hóa đơn: <span class="text-dark">#${order.code}</span> <br>
						Ngày: <fmt:formatDate value="${order.created}" pattern="dd/MM/yyyy HH:mm"/>
						<%--${order.created}--%>
					</address>
				</div>
			</div>
			<table style="width: 100%">
				<thead>
					<tr>
						<th>STT</th>
						<th>Mã sản phẩm</th>
						<th>Tên Sản phẩm</th>
						<th>Kích thước</th>
						<th>Màu sắc</th>
						<th>Số lượng</th>
						<th>Đơn giá</th>
						<th>Giảm giá</th>
						<th>Tổng giá</th>
					</tr>
				</thead>
				<tbody>
				<%--Error--%>
				<c:forEach varStatus="i" items="${detailList}" var="d">
					<tr>
						<td>${(i.index + 1)}</td>
						<td>#${d.stock.product.code}</td>
						<td>${d.stock.product.name}</td>
						<td>${d.stock.size}</td>
						<td>${d.stock.color}</td>
						<td>${d.quantity}</td>
						<td>${PriceUtils.convert(d.price)} đ</td>
						<td>${PriceUtils.convert(d.discount)} đ</td>
						<td>${PriceUtils.convert(d.money)} đ</td>
						<br/>
					</tr>
				</c:forEach>

				</tbody>
			</table>
			<hr/>
			<div class="row justify-content-end">
				<div class="col-lg-5 col-xl-4 col-xl-3 ml-sm-auto">
					<ul class="list-unstyled mt-4">
						<li class="mid pb-3 text-dark">TỔNG SỐ TIỀN <span
							class="d-inline-block float-right text-default">
							${PriceUtils.convert(order.totalSellPrice)} đ</span>
						</li>
						<li class="mid pb-3 text-dark">GIẢM GIÁ<span
							class="d-inline-block float-right text-default">
							${PriceUtils.convert(order.totalDiscount)} đ</span>
						</li>
						<li class="mid pb-3 text-dark">THÀNH TIỀN <span
							class="d-inline-block float-right text-default">
							${PriceUtils.convert(order.totalMoney)} đ</span>
						</li>
					</ul>
					<form action="donhang" method="post">
						<input style = "display:none" type="text" name = "orderId" value="${order.id}"/>
						<input name="status" value="2" style="display: none" type="text">
						<input type="submit" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" value="TIẾP NHẬN">
					</form>
					<form action="donhang" method="post">
						<input style = "display:none" type="text" name = "orderId" value="${order.id}"/>
						<input name="status" value= "4" style="display: none" type="text">
						<input value="HỦY" type="submit" class="btn btn-block mt-2 btn-lg btn-danger btn-pill">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>