<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh Cập nhật quyèn</title>
</head>
<body>
	<h3 class="ml-4 mt-3">Chỉnh Cập nhật quyèn</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên quản trị viên</label> <input
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên tài khoản</label> <input
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
		<div class="form-check">
			<input name="permission"  class="form-check-input" type="checkbox" value=""
				id="defaultCheck1" checked="checked"> <label class="form-check-label"
				for="defaultCheck1"> Thêm sản phẩm </label>
		</div>
		<div class="form-check">
			<input name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck2" checked="checked"> <label class="form-check-label"
				for="defaultCheck2"> Xóa sản phẩm </label>
		</div>
		<div class="form-check">
			<input  name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck3" checked="checked"> <label class="form-check-label"
				for="defaultCheck3"> Cập nhật sản phẩm </label>
		</div>
		<div class="form-check">
			<input name="permission"  class="form-check-input" type="checkbox" value=""
				id="defaultCheck4"> <label class="form-check-label"
				for="defaultCheck4"> Quản lý sản phẩm</label>
		</div>
		<div class="form-check">
			<input name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck5"> <label class="form-check-label"
				for="defaultCheck5"> Quản lý khuyến mãi </label>
		</div>
		<div class="form-check">
			<input  name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck6"> <label class="form-check-label"
				for="defaultCheck6"> Quản lý khách hàng </label>
		</div>
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Cập nhật </a>
</body>
</html>