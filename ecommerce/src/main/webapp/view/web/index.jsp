<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.fashi.utils.PriceUtils"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<input id="flag-index" type="hidden" value=".index-page">
	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="hero-items owl-carousel">
			<c:forEach items="${listPromotion}" var="promotion">
				<div class="single-hero-items set-bg"
					data-setbg="<c:url value="/template/img/sale/${promotion.imageUrl}"/>">
					<div class="container">
						<div class="row">
							<div class="col-lg-5">
								<span>${promotion.header}</span>
								<h1 class="text-left">${promotion.name}</h1>
								<p>${promotion.descriptions}</p>
								<a href="/sale?${promotion.id}" class="primary-btn">Mua sắm
									ngay</a>
							</div>
						</div>
						<div class="off-card">
							<h2>
								Sale <span>${promotion.value}%</span>
							</h2>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Banner Section Begin -->
	<div class="banner-section spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="<c:url value="/template/img/banner-1.jpg"/>" alt="">
						<div class="inner-text">
							<h4>Nam</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="<c:url value="/template/img/banner-2.jpg"/>" alt="">
						<div class="inner-text">
							<h4>Nữ</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="<c:url value="/template/img/banner-3.jpg"/>" alt="">
						<div class="inner-text">
							<h4>Trẻ Em</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Section End -->

	<!-- Women Banner Section Begin -->
	<section class="women-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<div class="product-large set-bg"
						data-setbg="<c:url value="/template/img/products/women-large.jpg"/>">
						<h2>Thời Trang Nữ</h2>
						<a href="#">Xem Ngay</a>
					</div>
				</div>
				<div class="col-lg-8 offset-lg-1">
					<div class="filter-control">
						<ul>
							<li class="active">Quần Áo</li>
							<li>Túi Sách</li>
							<li>Giày</li>
							<li>Phụ Kiện</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<c:forEach items="${listProductForWomen}" var="product">
							<div class="product-item">
								<a href="<c:url value="/products?id=${product.id}"/>">
									<div class="pi-pic">
										<img
											src="<c:url value="/template/img/products/${product.imageUrl}"/>"
											alt="">

										<c:if test="${product.sellPrice < product.originPrice}">
											<div class="sale">SALE</div>
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
												${PriceUtils.convert(product.sellPrice)} đ<span>${PriceUtils.convert(product.originPrice)}đ</span>
											</c:if>
											<c:if test="${product.sellPrice == product.originPrice}">
												${PriceUtils.convert(product.sellPrice)} đ
											</c:if>
										</div>
									</div>

								</a>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Women Banner Section End -->

	

	<!-- Man Banner Section Begin -->
	<section class="man-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="filter-control">
						<ul>
							<li class="active">Quần Áo</li>
							<li>Túi Sách</li>
							<li>Giày</li>
							<li>Phụ Kiện</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<c:forEach items="${listProductForMen}" var="product">
							<div class="product-item">
								<a href="<c:url value="/products?id=${product.id}"/>">
									<div class="pi-pic">
										<img
											src="<c:url value="/template/img/products/${product.imageUrl}"/>"
											alt="">

										<c:if test="${product.sellPrice < product.originPrice}">
											<div class="sale">SALE</div>
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
												${PriceUtils.convert(product.sellPrice)} đ<span>${PriceUtils.convert(product.originPrice)}đ</span>
											</c:if>
											<c:if test="${product.sellPrice == product.originPrice}">
												${PriceUtils.convert(product.sellPrice)} đ
											</c:if>
										</div>
									</div>

								</a>
							</div>
						</c:forEach>

					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="product-large set-bg m-large"
						data-setbg="<c:url value="/template/img/products/man-large.jpg"/>">
						<h2>Thời Trang Nam</h2>
						<a href="#">Xem Ngay</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Man Banner Section End -->


	<!-- Instagram Section Begin -->
	<div class="instagram-photo">

		<div class="insta-item set-bg"
			data-setbg="<c:url value="/template/img/insta-1.jpg"/>">

			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">Bộ sưu tập</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg"
			data-setbg="<c:url value="/template/img/insta-2.jpg"/>">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">Bộ sưu tập</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg"
			data-setbg="<c:url value="/template/img/insta-3.jpg"/>">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">Bộ sưu tập</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg"
			data-setbg="<c:url value="/template/img/insta-4.jpg"/>">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">Bộ sưu tập</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg"
			data-setbg="<c:url value="/template/img/insta-5.jpg"/>">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">Bộ sưu tập</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg"
			data-setbg="<c:url value="/template/img/insta-6.jpg"/>">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">Bộ sưu tập</a>
				</h5>
			</div>
		</div>
	</div>
	<!-- Instagram Section End -->
</body>
</html>