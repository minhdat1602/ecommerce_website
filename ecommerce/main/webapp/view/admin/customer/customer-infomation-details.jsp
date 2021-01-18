<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết hoạt động</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-customer-page">
	<h3 class="ml-4 mt-3">Chi tiết hoạt động</h3>
	<h4 class="ml-4 mt-3 mb-2">Lượt truy cập</h4>
	<table class="table text-center">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Tên trang</th>
				<th scope="col">Lượt truy cập</th>
			</tr>
		</thead>
		<tbody class="scrollDiv">
			<tr>
				<th scope="row">index.html</th>
				<td>15</td>
			</tr>
			<tr>
				<th scope="row">login.html</th>
				<td>2</td>
			</tr>

			<tr>
				<th scope="row">product.html</th>
				<td>20</td>
			</tr>

			<tr>
				<th scope="row">shop.html</th>
				<td>12</td>
			</tr>
			<tr>
				<th scope="row">shopping-cart.html</th>
				<td>5</td>
			</tr>
			<tr>
				<th scope="row">order-details.html</th>
				<td>2</td>
			</tr>
			<tr>
				<th scope="row">manager-account.html</th>
				<td>22</td>
			</tr>
			<tr>
				<th scope="row">list-order.html</th>
				<td>3</td>
			</tr>

			<tr>
				<th scope="row">favorite-product.html</th>
				<td>8</td>
			</tr>

			<tr>
				<th scope="row">check-out.html</th>
				<td>5</td>
			</tr>
		</tbody>
	</table>


	<h4 class="ml-4 mt-3 mb-2">Lượt mua hàng</h4>
	<table class="table text-center">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Mã đơn</th>
				<th scope="col">Tổng tiền</th>
				<th scope="col">Ngày mua</th>
				<th scope="col">Trạng thái</th>
			</tr>
		</thead>
		<tbody class="scrollDiv">
			<tr>
				<th scope="row">13</th>
				<th scope="row">520.000 đ</th>
				<th scope="row">7/11/2020</th>
				<th scope="row">Đã hoàn thành</th>
			</tr>
			<tr>
				<th scope="row">59</th>
				<th scope="row">220.000 đ</th>
				<th scope="row">9/11/2020</th>
				<th scope="row">Đã hoàn thành</th>
			</tr>
			<tr>
				<th scope="row">199</th>
				<th scope="row">590.000 đ</th>
				<th scope="row">20/11/2020</th>
				<th scope="row">Đã hoàn thành</th>
			</tr>

		</tbody>
	</table>


</body>
</html>