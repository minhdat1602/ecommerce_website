<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm nhà phân phối</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-suppliers-page">
	<h3 class="ml-4 mt-3">Thêm nhà phân phối</h3>
	<form action="" class="p-5">
	<div class="form-group">
			<label for="exampleFormControlInput1">Mã nhà phân phối</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Mã nhà phân phối">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên nhà phân phối</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên nhà phân phối">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Email</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Email">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Số điện thoại</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Số điện thoại">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Địa chỉ</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Địa chỉ">
		</div>
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Thêm </a>
</body>
</html>