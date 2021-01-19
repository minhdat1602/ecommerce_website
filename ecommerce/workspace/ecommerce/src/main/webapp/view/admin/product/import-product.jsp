<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhập hàng</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-product-page">
	<h3 class="ml-4 mt-3">Nhập hàng</h3>
	<form action="" class="p-5">
		<div class="form-group">
			<label for="exampleFormControlInput1">Mã sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Mã sản phẩm" value="${product.code}" disabled="disabled">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên sản phẩm" value="${product.name}" disabled="disabled">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Hình ảnh sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Hình ảnh sản phẩm" value="${product.imageUrl}" disabled="disabled">
				<img alt="" src="${product.imageUrl}">
		</div>
		
		<div class="form-group" id="attribute">
			<label for="exampleFormControlSelect2" style="margin-right: 120px;">Kích
				cỡ, Màu sắc, Số lượng</label>
			<ul id="listStock">
				<li>
					<select >
						
					</select>
				</li>
			</ul>
			
		</div>
		
	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Nhập</a>
</body>
</html>