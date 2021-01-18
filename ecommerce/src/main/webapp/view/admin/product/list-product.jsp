<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ecommerce.utils.PriceUtils"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
<style type="text/css">
.scrollDiv .table.text-center img {
	width: 60px;
	height: 60px;
}

.scrollDiv .table.text-center  td {
	line-height: 60px;
}
</style>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
	<input type="hidden" id="flag-index" value=".list-product-page">
	<h3 class="ml-4 mt-3">Danh sách sản phẩm</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">Tên</option>
						<option value="">Gía cao</option>
						<option value="">Gía thấp</option>
						<option value="">Tồn kho</option>
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
					<th scope="col">Tên</th>
					<th scope="col">Hình ảnh</th>
					<th scope="col">Phân loại</th>
					<th scope="col">Gía bán</th>
					<th scope="col">Gía niêm yết</th>
					<th scope="col"><select id="status" style="cursor: pointer;">
							<option>Trạng thái</option>
							<option>Thông thường</option>
							<option>Hàng mới</option>
							<option>Nổi bật</option>
							<option>Khuyến mãi</option>
					</select></th>
					<th scope="col">Tồn kho</th>
					<th scope="col">Nhập hàng</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<c:forEach items="${listProduct}" var="product">
					<tr>
						<td style="line-height: 60px;"><input type="checkbox"
							name="delete"></td>
						<td style="line-height: 60px;"><a href=""><i
								class="fa fa-edit"></i></a></td>
						<td style="line-height: 60px;" scope="row">${product.id}</td>
						<td style="line-height: 60px;">${product.name}</td>
						<td><img style="width: 60px; height: 60px;" alt=""
							src="<c:url value="/template/img/products/${product.imageUrl}"/>"></td>
						<td style="line-height: 60px;">${product.groupProduct}</td>
						<td style="line-height: 60px;">${PriceUtils.convert(product.sellPrice)}</td>
						<td style="line-height: 60px;">${PriceUtils.convert(product.originPrice)}</td>
						<td style="line-height: 60px;">${product.status}</td>
						<td style="line-height: 60px;">158</td>
						<td style="line-height: 60px;"><a
							href="<c:url value ="/view/admin/product/import-product.jsp"/>">Nhập</a></td>
					</tr>

				</c:forEach>

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
			href="<c:url value ="/view/admin/product/add-product.jsp"/>"
			type="button" class="btn btn-info"> Thêm sản phẩm <i
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