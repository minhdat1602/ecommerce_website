<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ecommerce.utils.PriceUtils"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cửa hàng</title>
</head>
<body>
	<input id="flag-index" type="hidden" value=".shop-page">
	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="<c:url value = "/view/web/index.jsp"/>"><i
							class="fa fa-home"></i> Trang chủ</a> <span>Cửa hàng</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
					<div class="filter-widget">
						<h4 class="fw-title">Dành cho</h4>
						<ul class="filter-catagories">
							<c:forEach var="customer" items="${filterByCustomers}">
								<li><a href="#">${customer.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Thương hiệu</h4>
						<ul class="filter-catagories">
							<c:forEach items="${filterByBrands}" var="brand">
								<li><a href="#">${brand.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Giá</h4>
						<div class="filter-range-wrap">
							<div class="range-slider">
								<div class="price-input">
									<div class="input-group mb-3">
										<input name="price" type="text" class="form-control"
											placeholder="Giá từ">
										<div class="input-group-append">
											<span class="input-group-text" id="basic-addon2">đ</span>
										</div>
									</div>
									<div class="input-group mb-3">
										<input name="price" type="text" class="form-control"
											placeholder="Đến">
										<div class="input-group-append">
											<span class="input-group-text" id="basic-addon1">đ</span>
										</div>
									</div>

								</div>
							</div>
							<div
								class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
								data-min="33" data-max="98">
								<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
							</div>
						</div>
						<a href="#" class="filter-btn">Lọc</a>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Màu Sắc</h4>
						<div class="fw-color-choose">
							<c:forEach items="${filterByColors}" var="color">
								<div class="cs-item">
									<input type="radio" id="cs-blue"> <label
										class="cs-blue" for="cs-blue"><a href="">${color.name}</a></label>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Size</h4>
						<div class="fw-size-choose">
							<ul id="choose-size">
								<c:forEach items="${filterBySize}" var="size">
									<li><a href="">${size.name}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Tags</h4>
						<div class="fw-tags">
							<a href="#">Quần</a> <a href="#">Áo</a> <a href="#">Áo Khoác</a>
							<a href="#">Quần kaki</a> <a href="#">Quần tây</a> <a href="#">Thắt
								lưng</a>

						</div>
					</div>
				</div>
				<div class="col-lg-9 order-1 order-lg-2 ">
					<div class="product-show-option">
						<div class="row">
							<div class="col-lg-7 col-md-7 mb-4">
								<div class="select-option">
									<label class="mr-2" for="p-show" id="labelForTotalItem">Hiển
										thị:</label> <select id="p-show" class="p-show">
										<option value="">10</option>
										<option value="">15</option>
										<option value="">20</option>
									</select> <label class="ml-2 mr-2" for="sorting" id="labelForSorting">Sắp
										xếp theo: </label> <select id="sorting" class="sorting">
										<option value="">Tên</option>
									</select>


								</div>
							</div>
							<div class="col-lg-5 col-md-5 text-right">
								<p>Hiển thị 01-08 của 36 Sản phẩm</p>
							</div>
						</div>
						<div class="product-list">
							<div class="row">
								<c:forEach var="product" items="${listProduct}">
									<div class="col-lg-4 col-sm-6">
										<div class="product-item">
											<a href="<c:url value="/view/web/product-details.jsp"/>">
												<div class="pi-pic">
													<img
														src="<c:url value="/template/web/img/products/${product.imageUrl}"/>"
														alt="">
													<c:if test="${product.sellPrice < product.originPrice}">
														<div class="sale pp-sale">SALE</div>
													</c:if>

													<div class="icon">
														<i class="icon_heart_alt"></i>
													</div>
												</div>
												<div class="pi-text">
													<div class="catagory-name">${product.groupProduct}</div>
													<a>
														<h5>${product.name}</h5>
													</a>
													<div class="product-price">
														<c:if test="${product.sellPrice < product.originPrice}">
															${PriceUtils.convert(product.sellPrice)} đ  
															<span>${PriceUtils.convert(product.originPrice)} đ</span>
														</c:if>
														<c:if test="${product.sellPrice == product.originPrice}">
															${PriceUtils.convert(product.sellPrice)} đ
													</c:if>

													</div>
												</div>
											</a>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
						<div class="loading-more">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#"><</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#">6</a></li>
									<li class="page-item"><a class="page-link" href="#">></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- Product Shop Section End -->

	<!-- Partner Logo Section Begin -->
	<div class="partner-logo">
		<div class="container">
			<div class="logo-carousel owl-carousel">
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/template/web/img/logo-carousel/logo-1.png"/>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/template/web/img/logo-carousel/logo-2.png"/>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/template/web/img/logo-carousel/logo-3.png"/>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/template/web/img/logo-carousel/logo-4.png"/>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/template/web/img/logo-carousel/logo-5.png"/>"
							alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Partner Logo Section End -->
</body>
</html>