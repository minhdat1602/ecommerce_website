<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm danh mục sản phẩm</title>
</head>
<body>
	<h3 class="ml-4 mt-3">Thêm danh mục sản phẩm</h3>
	<form action="" class="p-5">
	<div class="form-group">
			<label for="exampleFormControlSelect1">Các danh mục hiện tại</label> <select
				class="form-control" id="exampleFormControlSelect1">
				<option selected="selected">Chỉ Xem</option>
				<optgroup disabled="disabled" label="Cấp 1">
					<option>Nam</option>
					<option>Nữ</option>
					<option>Trẻ em</option>
				</optgroup>
				<optgroup  disabled="disabled" label="Cấp 2">
					<option>Quần</option>
					<option>Áo</option>
					<option>Phụ kiện</option>
				</optgroup>
				<optgroup  disabled="disabled" label="Cấp 3">
					<option>Quần kaki</option>
					<option>Quần jean</option>
					<option>Quần tây</option>
					<option>Áo thun</option>
					<option>Áo khoác</option>
					<option>Áo sơ mi</option>
					<option>Thắt lưng</option>
					<option>Ví</option>
					<option>Tất</option>
				</optgroup>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect2">Chọn cấp danh mục</label> 
			<select class="form-control" id="status">
				<option>Chọn--</option>
				<option>Cấp 1</option>
				<option>Cấp 2</option>
				<option>Cấp 3</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên danh mục sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên danh mục sản phẩm">
		</div>

		
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Thêm </a>
</body>
</html>