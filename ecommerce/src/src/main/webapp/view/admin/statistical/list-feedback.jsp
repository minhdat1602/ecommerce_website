<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách góp ý</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<input type="hidden" id="flag-index" value=".feedback-page">
	<h3 class="ml-4 mt-3">Danh sách góp ý</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">Tên</option>
						<option value="">Gía cao</option>
						<option value="">Gía thấp</option>
						<option value="">Tồn kho</option>
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
					<th scope="col">ID</th>
					<th scope="col">Vấn đề</th>
					<th scope="col">Góp ý</th>
					<th scope="col">ID Người dùng</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">

				<tr>
					<th scope="row">1</th>	
					<td>Sản phẩm</td>
					<td>Sản phẩm của cửa hàng cần thêm nhiều mẫu mã hơn</td>
					<td>5</td>
				</tr>
				<tr>
					<th scope="row">2</th>	
					<td>Sản phẩm</td>
					<td>Cần có các sản phẩm có size lớn hơn, mình cao 1m9, cân nặng 90kg rất khó lựa chọn được sản phẩm phù hợp tại cửa hàng</td>
					<td>6</td>
				</tr>
				<tr>
					<th scope="row">3</th>	
					<td>Chính sách</td>
					<td>Cửa hàng cần có chính sách ưu đãi hơn đối với khách hàng</td>
					<td>2</td>
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



</body>
</html>