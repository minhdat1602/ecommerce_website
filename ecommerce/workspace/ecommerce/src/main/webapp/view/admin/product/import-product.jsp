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
				placeholder="Mã sản phẩm" value="${product.code}"
				disabled="disabled">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Tên sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Tên sản phẩm" value="${product.name}"
				disabled="disabled">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Hình ảnh sản phẩm</label> <input
				type="text" class="form-control" id="exampleFormControlInput1"
				placeholder="Hình ảnh sản phẩm" value="${product.imageUrl}"
				disabled="disabled"> <img alt="" src="${product.imageUrl}">
		</div>

		<div class="form-group" id="attribute">
			<label for="exampleFormControlSelect2" style="margin-right: 120px;">Kích
				cỡ, Màu sắc, Số lượng</label>
			<ul id="listStock">
				<c:forEach items="${product.listStock}" var="stock">
					<form id="formSubmit">
						<li id="oneStock">
							<div class="form-group">
								<select class="form-control">
									<c:forEach items="${listSize}" var="size">
										<c:if test="${stock.sizeId == size.id}">
											<option selected="selected" value="${stock.sizeId}">${size.name}</option>
										</c:if>
										<c:if test="${stock.sizeId != size.id}">
											<option value="${stock.sizeId}">${size.name}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control">
									<c:forEach items="${listColor}" var="color">
										<c:if test="${stock.colorId == color.id}">
											<option selected="selected" value="${stock.colorId}">${color.name}</option>
										</c:if>
										<c:if test="${stock.colorId != color.id}">
											<option value="${stock.colorId}">${color.name}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									id="exampleFormControlInput1" placeholder=""
									value="${stock.quantity}">
							</div>
							<button id="btnUpdate" type="button" class="btn btn-danger">
								Cập nhật</button>
						</li>
					</form>
				</c:forEach>
			</ul>

		</div>

	</form>
	<a style="color: white; text-decoration: none; width: 20%;"
		href="<c:url value ="/view/admin/add-product.jsp"/>" type="button"
		class="btn btn-info ml-5 mb-3"> Nhập</a>
	<script type="text/javascript">
		var ckeditor = "";
		$(document).ready(function() {
			ckeditor = CKEDITOR.replace('description');
		})

		$("#btnUpdate").click(function() {
			var data = {};
			var dataForm = $("#formSubmit").serializeArray();
			$.each(dataForm, function(i, v) {
				data["" + v.name + ""] = v.value;
			})
			data["description"] = ckeditor.getData();
			if ($("#id").val() == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		})
		function addNew(data) {
			$.ajax({
				url : '${apiURL}',
				type : 'POST',
				contentType : 'application/json',
				dataType : 'text',
				data : JSON.stringify(data),
				success : function(result) {
					alert("Thêm sản phẩm thành công");
					window.location.href = '${newURL}?type=edit&id=' + result
				},
				error : function(error) {
					alert("Thêm sản phẩm thất bại");
					window.location.href = '${newURL}?type=add'
				}

			})
		}

		function updateNew(data) {
			$.ajax({
				url : '${apiURL}',
				type : 'PUT',
				contentType : 'application/json',
				dataType : 'text',
				data : JSON.stringify(data),
				success : function(result) {
					alert("Cập nhật sản phẩm thành công");
					window.location.href = '${newURL}?type=edit&id='
							+ $("#id").val()
				},
				error : function(error) {
					alert("Cập nhật sản phẩm thất bại");
					window.location.href = '${newURL}?type=edit&id='
							+ $("#id").val()
				}
			})
		}
	</script>
</body>
</html>