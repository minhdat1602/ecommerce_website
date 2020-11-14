<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại sản phẩm</title>
</head>
<body>
	<h3 class="ml-4 mt-3">Thêm loại sản phẩm</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên loại sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên loại sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Danh mục</label> <select
				class="form-control" id="exampleFormControlSelect1">
				<option>Chọn--</option>
				<option>Quần</option>
				<option>Áo</option>
				<option>Phụ kiện</option>
			</select>
		</div>
		
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Thêm </a>
</body>
</html>