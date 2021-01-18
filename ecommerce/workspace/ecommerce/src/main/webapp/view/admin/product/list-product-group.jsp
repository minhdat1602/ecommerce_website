<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhóm sản phẩm</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
	<input type="hidden" id="flag-index" value=".list-product-group-page">
	<div class="">
		<table class="table text-center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Xóa</th>
					<th scope="col">Cập nhật</th>
					<th scope="col">ID</th>
					<th scope="col">Mã</th>
					<th scope="col">Tên nhóm sản phẩm</th>
					<th scope="col">ID nhóm sản phẩm (cha)</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<c:forEach items="${listProductGroup}" var="group">
					<tr>
						<td><input type="checkbox" name="delete"></td>
						<td><a href=""><i class="fa fa-edit"></i></a></i></td>
						<th scope="row">${group.id}</th>
						<td>${group.code}</td>
						<td>${group.name}</td>
						<td>${group.parentGroupId}</td>
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
			type="button" class="btn btn-info"> Thêm nhóm sản phẩm <i
			class="fa fa-plus ml-2"></i>
		</a>
	</div>

	<ul id="pagination-demo" class="pagination-lg"></ul>

	<script type="text/javascript">

	$('#pagination-demo').twbsPagination({
		totalPages: 50,
		visiblePages: 5
	});

	</script>
</body>
</html>