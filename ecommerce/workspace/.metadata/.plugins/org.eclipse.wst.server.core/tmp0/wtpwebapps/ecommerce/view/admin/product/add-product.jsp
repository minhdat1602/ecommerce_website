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
				<optgroup label="Quần">
					<option>Kaki</option>
					<option>Tây</option>
				</optgroup>
				<optgroup label="Áo">
					<option>Thun</option>
					<option>Khoác</option>
					<option>Sơ mi</option>
				</optgroup>
				<optgroup label="Phụ kiện">
					<option>Thắt lưng</option>
					<option>Ví</option>
					<option>Tất</option>
				</optgroup>
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
		<div class="form-group" id="size">
			<label for="exampleFormControlSelect2">Size, Kích cỡ, Màu sắc</label> 
			<select>
				
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect3">Nhà phân phối</label> <select
				class="form-control" id="exampleFormControlSelect3">
				<option>Chọn--</option>
				<option>Yame</option>
				<option>Routine</option>
				<option>Ben</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Gía niêm yết</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Nhập giá niêm yết">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Gía bán</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Nhập giá bán">
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
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Thêm sản phẩm </a>
</body>
</html>