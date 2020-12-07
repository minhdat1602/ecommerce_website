<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách chương trình khuyến mãi</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-promotion-page">
	<h3 class="ml-4 mt-3">Danh sách chương trình khuyến mãi</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">Ngày kết thúc</option>
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
					<th scope="col">Xóa</th>
					<th scope="col">Cập nhật</th>
					<th scope="col">ID</th>
					<th scope="col">Mã</th>
					<th scope="col">Tên chương trình</th>
					<th scope="col">Bắt đầu</th>
					<th scope="col">Kết thúc</th>
					<th scope="col">Xem chi tiết</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></td>
					<th scope="row">1</th>
					<td>deal-of-week</td>
					<td>Deal of week</td>
					<td>7/11/2020</td>
					<td>14/11/2020</td>
					<td><a
						href="<c:url value ="/view/admin/sale/add-promotions.jsp"/>">Xem</a></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td ><a href=""><i class="fa fa-edit"></i></a></td>
					<th scope="row">2</th>
					<td>black-friday</td>
					<td>Black Friday</td>
					<td>30/11/2020</td>
					<td>1/12/2020</td>
					<td><a
						href="<c:url value ="/view/admin/sale/add-promotions.jsp"/>">Xem</a></td>
				</tr>

			</tbody>
		</table>
	</div>
	<div class="btn-control ml-2 mb-2">
		<button type="button" class="btn btn-danger">
			Xóa<i class="fa fa-trash ml-2"></i>
		</button>
		<button type="button" class="btn btn-danger">
			Xóa tất cả<i class="fa fa-trash  ml-2"></i>
		</button>
		<a style="color: white; text-decoration: none;"
			href="<c:url value ="/view/admin/sale/add-promotions.jsp"/>"
			type="button" class="btn btn-info"> Thêm chương trình <i
			class="fa fa-plus ml-2"></i>
		</a>
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