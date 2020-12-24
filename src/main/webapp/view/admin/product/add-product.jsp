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
<input type="hidden" id="flag-index" value=".list-product-page">
	<h3 class="ml-4 mt-3">Thêm sản phẩm</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Mã sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Mã sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên sản phẩm">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1" class="d-block">Mô tả sản phẩm</label> 
			<textarea rows="5" cols="50" name="description"></textarea>
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
				<optgroup label="Nam">
					<optgroup label="&nbsp;&nbsp;&nbsp;&nbsp;Quần">
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Kaki</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Tây</option>
					</optgroup>
					<optgroup label="&nbsp;&nbsp;&nbsp;&nbsp;Áo">
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Thun</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Sơ mi</option>
					</optgroup>
					<optgroup label="&nbsp;&nbsp;&nbsp;&nbsp;Phụ kiện">
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Ví</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Thắt lưng</option>
					</optgroup>
				</optgroup>
				<optgroup label="Nữ">
					<optgroup  label="&nbsp;&nbsp;&nbsp;&nbsp;Quần">
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Kaki</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Tây</option>
					</optgroup>
					<optgroup label="&nbsp;&nbsp;&nbsp;&nbsp;Áo">
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Thun</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Sơ mi</option>
					</optgroup>
					<optgroup  label="&nbsp;&nbsp;&nbsp;&nbsp;Phụ kiện">
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Ví</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;Khăn</option>
					</optgroup>
				</optgroup>
			</select>
		</div>
		
		<div class="form-group" id="attribute">
			<label for="exampleFormControlSelect2" style="margin-right: 120px;">Kích
				cỡ, Màu sắc, Số lượng</label>
				<select id="warehouse">
							<option>Kho</option>
							<option>A</option>
							<option>B</option>
							<option>C</option>
					</select> 
					<select class="ml-2" id="shelves">
							<option>Kệ</option>
							<option>Ảo</option>
							<option>1A</option>
							<option>1B</option>
							<option>2A</option>
							<option>2B</option>
					</select>
			<ul id="size_color_quantity">
				<!-- <li id="line">
					<select id="size">
							<option>S</option>
							<option>M</option>
							<option>L</option>
							<option>XL</option>
							<option>XXL</option>
					</select> 
					<select id="color">
							<option>Đỏ</option>
							<option>Vàng</option>
							<option>Tím</option>
							<option>Trắng</option>
					</select> 
					<input class="mr-5" type="text" id="quntity" name='quantity'>
					<select id="warehouse">
							<option>A</option>
							<option>B</option>
							<option>C</option>
					</select> 
					<select class="ml-3" id="shelves">
							<option>Ảo</option>
							<option>1A</option>
							<option>1B</option>
							<option>2A</option>
							<option>2B</option>
					</select> 
				</li> -->
				
				
			</ul>
			<a style="color: white; text-decoration: none; width: 100px;"
					id="addLine" type="button" class="btn btn-secondary ml-5 mt-2 mb-3">Thêm<i
					class="fa fa-plus ml-2"></i></a>
				<script type="text/javascript">
					$(document).ready(function() {
						$('#addLine').on('click', function(event) {
							event.preventDefault();
							$('#size_color_quantity').append('<li class="mt-1"><select id="size"><option>S</option><option>M</option><option>L</option><option>XL</option><option>XXL</option></select><select id="color"><option>Đỏ</option><option>Vàng</option><option>Tím</option><option>Trắng</option></select> <input class="mr-5" type="text" id="quantity" name="quantity"><select id="warehouse"><option>A</option><option>B</option><option>C</option></select><select class="ml-3" id="shelves"><option>Ảo</option><option>1A</option><option>1B</option><option>2A</option><option>2B</option></select></li>'); 
						});
					});
				</script>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect3">Thương hiệu</label> <select
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
			<label for="exampleFormControlSelect2">Trạng thái</label> 
			<select class="form-control" id="status">
				<option selected="selected" disabled="disabled">Hàng mới</option>
			</select>
		</div>


	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Thêm sản phẩm </a>
</body>
</html>