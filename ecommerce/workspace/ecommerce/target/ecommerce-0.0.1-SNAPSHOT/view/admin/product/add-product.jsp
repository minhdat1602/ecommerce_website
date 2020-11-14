<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm</title>
</head>
<body>
	<h3 class="ml-4 mt-3">Thêm sản phẩm</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Hình ảnh sản phẩm</label> <input
				type="file" class="form-control" id="exampleFormControlInput1"
				placeholder="Hình ảnh sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Phân loại</label> <select
				class="form-control" id="exampleFormControlSelect1">
				<option>Chọn--</option>
				<option>Áo</option>
				<option>Quần</option>
				<option>Áo khoác</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect2">Dành cho</label> <select
				class="form-control" id="exampleFormControlSelect1">
				<option>Chọn--</option>
				<option>Nam</option>
				<option>Nữ</option>
				<option>Trẻ em</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Gía</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Nhập giá">
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect2">Trạng thái</label> <select
				class="form-control" id="exampleFormControlSelect1">
				<option>Chọn--</option>
				<option>Hàng thường</option>
				<option>Hàng mới</option>
				<option>Khuyến mãi</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Số lượng nhập về</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Số lượng nhập về">
		</div>
		
	</form>
		<a style="color: white;text-decoration: none;width: 20%;" href="<c:url value ="/view/admin/add-product.jsp"/>" type="button" class="btn btn-info ml-5 mb-3" >
			Thêm sản phẩm
		</a>
</body>
</html>