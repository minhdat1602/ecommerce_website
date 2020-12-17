<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách đánh giá</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-review-page">
	<h3 class="ml-4 mt-3">Danh sách đánh giá sản phẩm</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">ID</option>
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
					<th scope="col">ID Sản phẩm</th>
					<th scope="col">Tên</th>
					<th scope="col">Hình ảnh</th>
					<th scope="col">Phân loại</th>
					<th scope="col">Đối tượng</th>
					<th scope="col">Số lượt đánh giá sao</th>
					<th scope="col">Số sao trung bình</th>
					<th scope="col">Số lượt bình luận</th>
					<th scope="col">Xem chi tiết</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>	
					<th style="line-height: 60px;" scope="row">1</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-1.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>25</td>
					<td>4.5</td>
					<td>12</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">2</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-2.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>11</td>
					<td>4.0</td>
					<td>5</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">3</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-3.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>3</td>
					<td>3.0</td>
					<td>7</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">4</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-4.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>12</td>
					<td>5.0</td>
					<td>2</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">5</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-1.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>25</td>
					<td>4.5</td>
					<td>12</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">6</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-2.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>11</td>
					<td>4.0</td>
					<td>5</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">7</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-3.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>3</td>
					<td>3.0</td>
					<td>7</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>
				<tr>	
					<th style="line-height: 60px;" scope="row">8</th>
					<td style="line-height: 60px;">Áo khoác dù</td>
					<td><img style="width: 60px;height: 60px;" alt=""
						src="<c:url value="/template/admin/images/products/product-4.jpg"/>"></td>
					<td style="line-height: 60px;">Áo</td>
					<td style="line-height: 60px;">Nam</td>
					<td>12</td>
					<td>5.0</td>
					<td>2</td>
					<td><a href="<c:url value ="/view/admin/product/review/review-details.jsp"/>">Xem</a></td>
				</tr>

			
			</tbody>
		</table>
	</div>

	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<ul id="pagination-demo" class="pagination-lg"></ul>

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