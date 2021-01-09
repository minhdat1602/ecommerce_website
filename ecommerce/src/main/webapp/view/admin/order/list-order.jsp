<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@page import="com.ecommerce.utils.PriceUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách đơn hàng</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-order-page">
	<h3 class="ml-4 mt-3">Danh sách đơn hàng</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">Mới nhất</option>
						<option value="">Tổng giá</option>
					</select> <label for="sorting" id="labelForSorting">Sắp xếp theo: </label> <select
						id="p-show" class="p-show">
						<option value="">10</option>
						<option value="">15</option>
						<option value="">20</option>
					</select> <label for="p-show" id="labelForTotalItem">Hiển thị:</label>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fuild mt-3"
		style="height: 450px; overflow-y: scroll; overflow-x: hidden;">
		<div class="row">
			<table class="table text-center">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Mã đơn</th>
						<th scope="col">Khách hàng</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col">Tổng giá</th>
						<th scope="col">Lợi nhuận</th>
						<th scope="col">Trạng thái</th>
						<th scope="col">Chi tiết</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderList}" var="order">
						<tr>
							<th scope="row">#${order.code}</th>
							<td>${order.customer.fullname}</td>
							<td>${order.created}</td>
							<td>${PriceUtils.convert(order.totalMoney)} đ</td>
							<td>${PriceUtils.convert(order.totalMoney - order.totalOriginPrice)} đ</td>
							<td>
								<div class="btn btn-primary">
									<c:choose>
										<c:when test="${order.status  == 1}">Chờ xử lý</c:when>
										<c:when test="${order.status  == 2}">Đang gửi</c:when>
										<c:when test="${order.status  == 3}">Hoàn tất</c:when>
										<c:when test="${order.status  == 4}">Đã hủy</c:when>
									</c:choose>
								</div>
							</td>
							<td>
								<form action="donhang" method="post">

									<input style = "display:none" type="text" name = "orderId" value="${order.id}"/>
									<input value="Xem" type="submit" class="btn" style="text-decoration: none;"/>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>
</body>
</html>