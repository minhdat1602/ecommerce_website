<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật quyền</title>
</head>
<body>
	<h3 class="ml-4 mt-3">Cập nhật quyền</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">ID</label> <input
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Mã</label> <input
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Quyền</label> <input
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Cập nhật </a>
</body>
</html>