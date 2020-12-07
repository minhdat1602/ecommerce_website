<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhóm sản phẩm</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
	<input type="hidden" id="flag-index" value=".list-product-group-page">
	<h3 class="ml-4 mt-3 mb-3 d-inline">Nhóm sản phẩm</h3>
	<a style="text-decoration: none;"
		href="<c:url value ="/view/admin/product/add-product-group.jsp"/>"
		type="button" class="btn btn-info"> Thêm nhóm sản phẩm <i
		class="fa fa-plus ml-2"></i>
	</a>
	<h4 class="ml-4 mt-5 mb-2">Đối tượng Khách Hàng (Nhóm sản phẩm Bậc
		1)</h4>
	<div class="">
		<table class="table text-center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Xóa</th>
					<th scope="col">Cập nhật</th>
					<th scope="col">ID</th>
					<th scope="col">Tên nhóm khách hàng</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">1</th>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">2</th>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">3</th>
					<td>Trẻ em</td>
				</tr>
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
	</div>




	<h4 class="ml-4 mt-5 mb-2">Danh mục sản phẩm (Nhóm sản phẩm Bậc 2)</h4>
	<div class="scrollDiv">
		<table class="table text-center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Xóa</th>
					<th scope="col">Cập nhật</th>
					<th scope="col">ID</th>
					<th scope="col">Tên nhóm danh mục</th>
					<th scope="col">Tên nhóm khách hàng</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">4</th>
					<td>Quần</td>
					<td>Nam</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">5</th>
					<td>Áo</td>
					<td>Nam</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">6</th>
					<td>Phụ kiện</td>
					<td>Nam</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">7</th>
					<td>Quần</td>
					<td>Nữ</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">8</th>
					<td>Áo</td>
					<td>Nữ</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">9</th>
					<td>Phụ kiện</td>
					<td>Nữ</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">10</th>
					<td>Quần</td>
					<td>Trẻ em</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">11</th>
					<td>Áo</td>
					<td>Trẻ em</td>

				</tr>
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
	</div>

	<h4 class="ml-4 mt-5 mb-2">Loại sản phẩm (Nhóm sản phẩm Bậc 3)</h4>
	<div class="scrollDiv">
		<table class="table text-center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Xóa</th>
					<th scope="col">Cập nhật</th>
					<th scope="col">ID</th>
					<th scope="col">Tên nhóm loại</th>
					<th scope="col">Tên nhóm danh mục</th>
					<th scope="col">Tên nhóm khách hàng</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">12</th>
					<td>Quần kaki</td>
					<td>Quần</td>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">13</th>
					<td>Quần tây</td>
					<td>Quần</td>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">14</th>
					<td>Áo thun</td>
					<td>Áo</td>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">15</th>
					<td>Áo sơ mi</td>
					<td>Áo</td>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">16</th>
					<td>Ví</td>
					<td>Phụ kiện</td>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">17</th>
					<td>Thắt lưng</td>
					<td>Phụ kiện</td>
					<td>Nam</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">18</th>
					<td>Quần kaki</td>
					<td>Quần</td>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">19</th>
					<td>Quần tây</td>
					<td>Quần</td>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">20</th>
					<td>Áo thun</td>
					<td>Áo</td>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">21</th>
					<td>Áo sơ mi</td>
					<td>Áo</td>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">22</th>
					<td>Ví</td>
					<td>Phụ kiện</td>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">23</th>
					<td>Khăn</td>
					<td>Phụ kiện</td>
					<td>Nữ</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">24</th>
					<td>Quần kaki</td>
					<td>Quần</td>
					<td>Trẻ em</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">25</th>
					<td>Quần tây</td>
					<td>Quần</td>
					<td>Trẻ em</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">26</th>
					<td>Áo thun</td>
					<td>Áo</td>
					<td>Trẻ em</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete"></td>
					<td><a href=""><i class="fa fa-edit"></i></a></i></td>
					<th scope="row">27</th>
					<td>Áo sơ mi</td>
					<td>Áo</td>
					<td>Trẻ em</td>
				</tr>
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

	</div>



</body>
</html>