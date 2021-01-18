<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách khách hàng</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-customer-page">
	<h3 class="ml-4 mt-3">Danh sách khách hàng</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">Tên</option>
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
	<div class="scrollDiv">
		<table class="table text-center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Tên</th>
					<th scope="col">Giới tính</th>
					<th scope="col">Tuổi</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Số điện thoại</th>
					<th scope="col">Email</th>
					<th scope="col">Ngày đăng ký</th>
					<th scope="col">Hoạt động</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>
					<th scope="row">1</th>
					<td>Nguyễn Văn A</td>
					<th scope="col">Nam</th>
					<th scope="col">20</th>
					<td>113 Đường 15, Q9, TPHCM</td>
					<td>0164794452</td>
					<td>nva@gmail.com</td>
					<td>3/10/2020</td>
					<td><a
						href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Nguyễn Thị B</td>
					<th scope="col">Nữ</th>
					<th scope="col">30</th>
					<td>03 Đường Đinh Bộ Lĩnh, Tân Bình, TPHCM</td>
					<td>0949785236</td>
					<td>ntb@gmail.com</td>
					<td>31/10/2020</td>
					<td><a
						href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Nguyễn Văn A</td>
					<th scope="col">Nam</th>
					<th scope="col">25</th>
					<td>113 Đường 15, Q9, TPHCM</td>
					<td>0164794452</td>
					<td>nva@gmail.com</td>
					<td>3/10/2020</td>
					<td><a
						href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td>Nguyễn Thị B</td>
					<th scope="col">Nữ</th>
					<th scope="col">31</th>
					<td>03 Đường Đinh Bộ Lĩnh, Tân Bình, TPHCM</td>
					<td>0949785236</td>
					<td>ntb@gmail.com</td>
					<td>31/10/2020</td>
					<td><a
						href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
				</tr><tr>
					<th scope="row">5</th>
					<td>Nguyễn Văn A</td>
					<th scope="col">Nam</th>
					<th scope="col">19</th>
					<td>113 Đường 15, Q9, TPHCM</td>
					<td>0164794452</td>
					<td>nva@gmail.com</td>
					<td>3/10/2020</td>
					<td><a
						href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>
					<th scope="row">6</th>
					<td>Nguyễn Thị B</td>
					<th scope="col">Nam</th>
					<th scope="col">20</th>
					<td>03 Đường Đinh Bộ Lĩnh, Tân Bình, TPHCM</td>
					<td>0949785236</td>
					<td>ntb@gmail.com</td>
					<td>31/10/2020</td>
					<td><a
						href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
				</tr>

			</tbody>
		</table>
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

	<ul id="pagination-demo" class="pagination-lg"></ul>

<!-- 	<script type="text/javascript">
		$(document).ready(function() {
			$('#pagination-demo').twbsPagination({
				totalPages : 50,
				visiblePages : 5
			});
		});
	</script> -->

</body>
</html>