<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm quản trị viên</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-manager-page">
	<h3 class="ml-4 mt-3">Thêm quản trị viên</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên tài khoản</label> <input
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
		<div class="form-check">
			<input name="permission"  class="form-check-input" type="checkbox" value=""
				id="defaultCheck1" checked="checked"> <label class="form-check-label"
				for="defaultCheck1">Quản trị sản phẩm </label>
		</div>
		<div class="form-check">
			<input name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck2" checked="checked"> <label class="form-check-label"
				for="defaultCheck2">Quản trị hóa đơn</label>
		</div>
		<div class="form-check">
			<input  name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck3" checked="checked"> <label class="form-check-label"
				for="defaultCheck3">Quản trị khách hàng</label>
		</div>
		<div class="form-check">
			<input  name="permission" class="form-check-input" type="checkbox" value=""
				id="defaultCheck3" checked="checked"> <label class="form-check-label"
				for="defaultCheck3">Quản trị thống kê</label>
		</div>

	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3">Thêm</a>
</body>
</html>