<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm nhóm sản phẩm</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-product-group-page">
	<h3 class="ml-4 mt-3">Thêm nhóm sản phẩm</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Mã nhóm sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên loại sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên nhóm sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên loại sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Nhóm bậc</label> 
			<select>
				<option>Chọn--</option>
				<option>Bậc 1 (Nhóm đối tượng khách hàng)</option>
				<option>Bậc 2 (Nhóm danh mục sản phẩm)</option>
				<option>Bậc 3 (Nhóm loại sản phẩm)</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Thêm vào nhóm sản phẩm có ID</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="ID">
		</div>
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Thêm </a>
</body>
</html>