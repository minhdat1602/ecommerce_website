<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ecommerce.utils.PriceUtils"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
<style type="text/css">
.scrollDiv .table.text-center img {
	width: 60px;
	height: 60px;
}

.scrollDiv .table.text-center  td {
	line-height: 60px;
}
</style>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
	<input type="hidden" id="flag-index" value=".list-product-page">
	<h3 class="ml-4 mt-3">Danh sách sản phẩm</h3>
	<%--<div class="btn-control ml-2 mb-2">
		<button type="button" class="btn btn-danger">
			Xóa<i class="fa fa-trash ml-2"></i>
		</button>
		<button type="button" class="btn btn-danger">
			Xóa tất cả<i class="fa fa-trash  ml-2"></i>
		</button>
		<a style="color: white; text-decoration: none;"
		   href="<c:url value ="/view/admin/product/add-product.jsp"/>"
		   type="button" class="btn btn-info"> Thêm sản phẩm <i
				class="fa fa-plus ml-2"></i>
		</a>
	</div>--%>
	<form id="form" action="sanpham" method="get">
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" name="sorting" class="sorting">
						<option value="a" >Tên</option>
						<option value="b">Gía cao</option>
						<option value="c">Gía thấp</option>

						<%--test--%>
							<%--<c:set var="grades" value="1,2,3,A,B,C,D,E" scope="application" />
							<select class="grade" title="Grade Obtained">
								<c:forEach items="${fn:split(grades, ',')}" var="grade">
									<option value="${grade}" ${qd.grade == grade ? 'selected' : ''}>${grade}</option>
								</c:forEach>
							</select>--%>

					</select> <label for="sorting" id="labelForSorting">Sắp xếp theo: </label> <select
						id="p-show" class="p-show">
						<option value="">10</option>
						<option value="">15</option>
						<option value="">20</option>
					</select> <label for="p-show" id="labelForTotalItem">Hiển thị:</label>
				</div>
			</div>
		</div>
	</div>

	<div class="scrollDiv">
		<table class="table text-center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Xóa</th>
					<th scope="col">Cập nhật</th>
					<th scope="col">Mã</th>
					<th scope="col">Tên</th>
					<th scope="col">Hình ảnh</th>
					<%--<th scope="col">Phân loại</th>--%>
					<th scope="col">Giá gốc</th>
					<th scope="col">Giá bán</th>
					<th scope="col">Loại</th>
					<th scope="col">Thương hiệu</th>
					<th scope="col">Trạng thái</th>
					<%--<th scope="col"><select id="status" style="cursor: pointer;">
							<option>Trạng thái</option>
							<option>Thông thường</option>
							<option>Hàng mới</option>
							<option>Nổi bật</option>
							<option>Khuyến mãi</option>
					</select></th>--%>
					<th scope="col">Tồn kho</th>
					<th scope="col">Nhập hàng</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<c:forEach items="${listProduct}" var="product">
					<tr>
						<td style="line-height: 60px;"><input type="checkbox"
							name="delete"></td>
						<td style="line-height: 60px;"><a href=""><i
								class="fa fa-edit"></i></a></td>
						<td style="line-height: 60px;" scope="row">#${product.code}</td>
						<td style="line-height: 60px;">${product.name}</td>
						<td><img style="width: 60px; height: 60px;" alt=""
							src="<c:url value="/template/img/products/${product.imageUrl}"/>"></td>
						<td style="line-height: 60px;">${PriceUtils.convert(product.originPrice)} đ</td>
						<td style="line-height: 60px;">${PriceUtils.convert(product.sellPrice)} đ</td>
						<td style="line-height: 60px;">${product.productGroup.name}</td>
						<td style="line-height: 60px;">${product.productBrand.name}</td>
						<td style="line-height: 60px;">
							<c:choose>
								<c:when test="${product.status  == 1}">Hiển thị</c:when>
								<c:when test="${product.status == 0}">Ẩn</c:when>
							</c:choose>
						</td>
						<td style="line-height: 60px;">${product.totalQuantity}</td>
						<td style="line-height: 60px;">
							<%--<form action="sanpham" method="post">
								<input type="submit" value="Nhập">
							</form>--%>
							<a href="<c:url value ='/admin/sanpham?action=enter'/>">Nhập</a>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	<div class="btn-control ml-2 mb-2">
		<button type="button" class="btn btn-danger">
			Xóa<i class="fa fa-trash ml-2"></i>
		</button>
		<button type="button" class="btn btn-danger">
			Xóa tất cả<i class="fa fa-trash  ml-2"></i>
		</button>
		<a style="color: white; text-decoration: none;"
			href="<c:url value ="/view/admin/product/add-product.jsp"/>"
			type="button" class="btn btn-info"> Thêm sản phẩm <i
			class="fa fa-plus ml-2"></i>
		</a>
	</div>

	<ul style="margin-left: 50%" class="pagination" id="pagination"></ul>
		<input type="hidden" value="${page}" id="page" name="page"/>
		<%--<input type="hidden" value="name" id="sortName" name="sortName"/>
		<input type="hidden" value= "asc" id="sortBy" name="sortBy"/>--%>
	</form>
	<script>
		var currentPage = ${page};
		var totalPage = ${totalPage};
		$(function () {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages: totalPage,
				visiblePages: 5,
				startPage: currentPage,
				onPageClick: function (event, page) {
					if(currentPage != page){
					$('#page').val(page);
					$('#form').submit();
					}
				/*if(currentPage != page){
					${'#page'}.va
					<%--${'#page'}.eval(page);
					${'form'}.onsubmit();--%>
				}*/
				}
			});
		});
		/*var totalPages = <%--${model.totalPage};
		var currentPage = ${model.page};--%>
		var limit = 2;*/
		/*$(function () {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages: totalPages,
				visiblePages: 10,
				startPage: currentPage,
				onPageClick: function (event, page) {
					if (currentPage != page) {
						$('#maxPageItem').val(5);
						$('#page').val(page);
						$('#sortName').val('title');
						$('#sortBy').val('desc');
						$('#type').val('list');
						$('#formSubmit').submit();
					}
				}
			});
		});*/

		/*$("#btnDelete").click(function() {
			var data = {};
			var ids = $('tbody input[type=checkbox]:checked').map(function () {
				return $(this).val();
			}).get();
			data['ids'] = ids;
			deleteNew(data);
		});

		function deleteNew(data) {
			$.ajax({
				url: '${APIurl}',
				type: 'DELETE',
				contentType: 'application/json',
				data: JSON.stringify(data),
				success: function (result) {
					window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=delete_success";
				},
				error: function (error) {
					window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
				}
			});
		}*/
	</script>
	<%--<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<ul id="pagination-demo" class="pagination-lg"></ul>--%>

	<!-- 	<script type="text/javascript">
		$(document).ready(function() {
			$('#pagination-demo').twbsPagination({
				totalPages : 50,
				visiblePages : 5
			});
		});
	</script> -->

</body>
</html>