<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
						<th scope="col">Tổng giá bán</th>
						<th scope="col">Tổng giảm giá</th>
						<th scope="col">Thành tiền</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col"><select id="status" style="cursor: pointer;">
								<option>Trạng thái</option>
								<option>Đã đặt hàng</option>
								<option>Đã tiếp nhận</option>
								<option>Đang giao</option>
								<option>Đã hủy</option>
								<option>Hoàn thành</option>
						</select></th>
						<th scope="col">Chi tiết</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listOrder}" var="order">
						<tr>
							<th scope="row">${order.id}</th>
							<td>${order.totalSellPrice}</td>
							<td>${order.totalDiscount}</td>
							<td>${order.totalMoney}</td>
							<td>${order.dateSell}</td>
							<td>${order.status}</td>
							<td><a class="btn" style="text-decoration: none;"
								href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
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