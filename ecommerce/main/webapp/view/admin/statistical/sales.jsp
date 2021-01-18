<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doanh số</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<input type="hidden" id="flag-index" value=".sales-page">
	<h3 class="ml-4 mt-3">Doanh số</h3>
	<div class="product-show-option">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="select-option">
					<select id="sorting" class="sorting">
						<option value="">Trong ngày</option>
						<option value="">Trong tuần</option>
						<option value="">Tháng này</option>
						<option value="">Tháng trước</option>
						<option value="">Tất cả</option>
						<option value="">Tùy chọn</option>
					</select> <label for="sorting" id="labelForSorting">Thống kê theo: </label>
					<select id="p-show" class="p-show">
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
					<th scope="col">Nhóm sản phẩm</th>
					<th scope="col">Lượt bán</th>
					<th scope="col">Tổng doanh số</th>
					<th scope="col">% Doanh số</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>
					<td style="font-weight: 700;" data-toggle="collapse"
						href="#multiCollapseExample1" role="button" aria-expanded="false"
						aria-controls="multiCollapseExample1">Quần</td>
					<td>120</td>
					<td>5.500.000đ</td>
					<td>40%</td>

				</tr>
				<tr style="cursor: pointer;" class="collapse multi-collapse" id="multiCollapseExample1">
					<td>Quần kaki </br>Quần tây</br>Quần short</td>
					<td>50</br>50</br>20</td>
					<td>2.000.000đ</br>2.000.000đ</br>500.000đ</td>
					<td>15%</br>15%</br>10%</td>
				</tr>
					
				<tr>
					<td style="font-weight: 700;" data-toggle="collapse"
						href="#multiCollapseExample2" role="button" aria-expanded="false"
						aria-controls="multiCollapseExample2">Áo</td>
					<td>180</td>
					<td>6.500.000đ</td>
					<td>45%</td>

				</tr>
				<tr style="cursor: pointer;" class="collapse multi-collapse" id="multiCollapseExample2">
					<td>Áo thun </br>Áo sơ mi</br>Áo khoác</td>
					<td>70</br>70</br>40</td>
					<td>2.500.000đ</br>2.500.000đ</br>1.500.000đ</td>
					<td>17%</br>17%</br>11%</td>
				</tr>
				
				
				<tr>
					<td style="font-weight: 700;" data-toggle="collapse"
						href="#multiCollapseExample3" role="button" aria-expanded="false"
						aria-controls="multiCollapseExample3">Phụ kiện</td>
					<td>100</td>
					<td>2.000.000đ</td>
					<td>15%</td>

				</tr>
				<tr style="cursor: pointer;" class="collapse multi-collapse" id="multiCollapseExample3">
					<td>Thắt lưng </br>Ví</br>Khăn</td>
					<td>20</br>30</br>15</td>
					<td>550.000đ</br>750.000đ</br>650.000đ</td>
					<td>4%</br>6%</br>5%</td>
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