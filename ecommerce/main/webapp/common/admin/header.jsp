<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Header -->
<header class="main-header " id="header">
	<nav class="navbar navbar-static-top navbar-expand-lg">
		<!-- search form -->
		<div class="search-form d-none d-lg-inline-block">
			<div class="input-group">
				<select id="filter" style="border: none;">
					<option disabled="disabled">Bộ lọc</option>
					<option>Hóa đơn</option>
					<option>Sản phẩm</option>
					<option>Khách hàng</option>
					<option>Quản trị viên</option>
				</select>
				<input type="text" name="query" id="search-input"
					class="form-control" placeholder="Tìm kiếm" autofocus
					autocomplete="off" />
				<button type="button" name="search" id="search-btn"
					class="btn btn-flat">
					<i class="mdi mdi-magnify"></i>
				</button>
			</div>
			<div id="search-results-container">
				<ul id="search-results"></ul>
			</div>
		</div>

		<div class="navbar-right ">
			<ul class="nav navbar-nav">
				<!-- User Account -->
				<li class="dropdown user-menu">
					<button href="#" class="dropdown-toggle nav-link"
						data-toggle="dropdown">
						<span class="d-none d-lg-inline-block">Văn A</span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right">


						<li class="dropdown-footer"><a href="signin.html"> <i
								class="mdi mdi-logout"></i> Đăng xuất
						</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>


</header>
