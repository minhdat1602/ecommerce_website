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
						<th scope="col">Sản phẩm</th>
						<th scope="col">Số lượng sản phẩm</th>
						<th scope="col">Tổng giá</th>
						<th scope="col">Ngày đặt</th>
						<th scope="col"><select id="status" style="cursor: pointer;">
								<option>Trạng thái</option>
								<option>Đã đặt hàng</option>
								<option>Đã tiếp nhận</option>
								<option>Đang xử lý</option>
								<option>Đã hủy</option>
								<option>Hoàn thành</option>
						</select></th>
						<th scope="col">Chi tiết</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Áo khoác dù</td>
						<td>1</td>
						<td>120.000 đ</td>
						<td>2/11/2020</td>
						<td>
							<div class="btn btn-primary">Đã tiếp nhận</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Quần kaki</td>
						<td>1</td>
						<td>135.000 đ</td>
						<td>3/11/2020</td>
						<td>
							<div class="btn btn-warning">Đã đặt hàng</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Áo thun, Quần kaki</td>
						<td>2</td>
						<td>510.000 đ</td>
						<td>4/11/2020</td>
						<td>
							<div class="btn btn-info">Đang xử lý</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>Thắt lưng Yame</td>
						<td>1</td>
						<td>110.000 đ</td>
						<td>4/11/2020</td>
						<td>
							<div class="btn btn-danger">Đã hủy</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>Áo thun, Quần kaki, Áo khoác</td>
						<td>3</td>
						<td>550.000 đ</td>
						<td>5/11/2020</td>
						<td>
							<div class="btn btn-success">Hoàn thành</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>Áo khoác Justmen</td>
						<td>1</td>
						<td>260.000 đ</td>
						<td>8/11/2020</td>
						<td>
							<div class="btn btn-primary">Đã tiếp nhận</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>Quần Short</td>
						<td>1</td>
						<td>80.000 đ</td>
						<td>9/11/2020</td>
						<td>
							<div class="btn btn-warning">Đã đặt hàng</div>
						</td>
						<td><a class="btn" style="text-decoration: none;"
							href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
					</tr>

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