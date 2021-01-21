<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách người dùng</title>
<script
	src="<c:url value="/template/admin/assets/plugins/jquery/jquery.min.js" />"></script>
</head>
<body>
<form action="<c:url value='/admin/danh-sach-nguoi-dung'/>" method="get" id="submitForm">
	<input type="hidden" id="flag-index" value=".list-customer-page">
	<h3 class="ml-4 mt-3">Danh sách người dùng</h3>
	<div class="product-show-option">
			<div class="row">
				<div class="col-lg-7 col-md-7">
					<div class="select-option">
						<select id="sorting" name="sorting" class="sorting">
							<option value="">--Chọn--</option>
							<option value="admin">Quản trị viên</option>
							<option value="customer">Khách hàng</option>
						</select> <label for="sorting" id="labelForSorting">Sắp xếp theo: </label>
						<select class="p-show" name="maxPageItem" id="maxPageItem"
							value="${pageable.maxPageItem}">
							<option value="">--Chọn--</option>
							<option value="10">10</option>
							<option value="15">15</option>
							<option value="20">20</option>
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
					<th scope="col">Tên</th>
					<th scope="col">Giới tính</th>
					<th scope="col">Tuổi</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Số điện thoại</th>
					<th scope="col">Email</th>
					<th scope="col">Ngày đăng ký</th>
					<th scope="col">Hoạt động</th>
				</tr>
			</thead>
			<tbody class="scrollDiv">
				<c:forEach items="${listUser}" var="user">
					<tr>
						<th scope="row">${user.id}</th>
						<td>${user.firstName} ${user.lastName}</td>
						<th scope="col">${user.gender}</th>
						<th scope="col">${user.age}</th>
						<td>${user.address}</td>
						<td>${user.phone}</td>
						<td>${user.email}</td>
						<td>${user.dateRegister}</td>
						<td><a
							href="<c:url value ="/view/admin/customer/customer-infomation-details.jsp"/>">Xem</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		<input type="hidden" name="type" id="type" value="">
		<input type="hidden" name="page" id="page" value="${pageable.page}"> 
		<input type="hidden" name="sorting" id="sorting" value="${pageable.sorting}">
		<input type="hidden" name="sortBy" id="sortBy" value="${pageable.sortBy}"> 		
		<div style="margin-left: 5px;" class="container">
			<nav aria-label="Page navigation">
				<ul class="pagination" id="pagination"></ul>
			</nav>
		</div>
</form>
	
<script type="text/javascript">
		
		$(function() {	
			$('#sorting').on('change', function (e) {
			    var sorting = $('#sorting').val();
			    $('#sorting').val("date_sell");
			    if (sorting=="date_sellasc") {
			    	$('#sortBy').val("asc");
				} else {
					$('#sortBy').val("desc");
				}
			    var totalPages = ${pageable.totalPage};
				var startPage = ${pageable.page};
				var maxPageItem = ${pageable.maxPageItem};
				$('#type').val("list");
				$('#maxPageItem').val(maxPageItem);
				$('#page').val(startPage);
				$('#submitForm').submit();
			});
			$('#maxPageItem').on('change', function (e) {
			    var sorting = $('#sorting').val();
			    $('#sorting').val("date_sell");
			    if (sorting=="date_sellasc") {
			    	$('#sortBy').val("asc");
				} else {
					$('#sortBy').val("desc");
				}
			    var totalPages = ${pageable.totalPage};
				var startPage = ${pageable.page};
				var maxPageItem = $('#maxPageItem').val();
				 $('#type').val("list");
				$('#maxPageItem').val(maxPageItem);
				$('#page').val(startPage);
				$('#submitForm').submit();
			});
			$('#maxPageItem').val(${pageable.maxPageItem}).attr('selected','selected');
			$('#sorting').val('${pageable.sorting}${pageable.sortBy}').attr('selected','selected');
			var sorting = "${pageable.sorting}";
			var sortBy = "${pageable.sortBy}";
			var totalPages = ${pageable.totalPage};
			var startPage = ${pageable.page};
			var maxPageItem = ${pageable.maxPageItem};
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 10,
				startPage : startPage,
				onPageClick : function(event, page) {
					if (startPage != page) {
						$('#type').val("list");
						$('#maxPageItem').val(maxPageItem);
						$('#page').val(page);
						$('#sorting').val(sorting);
						$('#sortBy').val(sortBy);
						$('#submitForm').submit();
					}
				}
			}).on('page', function(event, page) {
				console.info(page + ' (from event listening)');
			});
		});
	</script>

</body>
</html>