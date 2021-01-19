<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ecommerce.utils.PriceUtils"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>

	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="<c:url value = "/view/web/index.jsp"/>"><i
							class="fa fa-home"></i> Trang chủ</a> <span>Chi tiết sản phẩm</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<section class="product-shop spad page-details">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
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
						</div>
						<a href="#" class="filter-btn">Lọc</a>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Màu Sắc</h4>
						<div class="fw-color-choose">
							<c:forEach items="${filterByColors}" var="color">
								<div class="cs-item">
									<input type="radio" id="cs-${color.code}"> <label
										class="cs-${color.code}" for="cs-${color.code}"><a href="">${color.name}</a></label>
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
							<c:forEach items="${filterByTags}" var="tag">
								<a href="#">${tag.name}</a>
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="col-lg-9">
					<form id="product-form" method="POST" action="<c:url value="/gio-hang"/> ">
						<div class="row">
							<div class="col-lg-6">
								<div class="product-pic-zoom">
									<img class="product-big-img"
										src="<c:url value="/template/img/products/${product.imageUrl}"/>"
										alt="">
									<div class="zoom-icon">
										<i class="fa fa-search-plus"></i>
									</div>
								</div>
								<div class="product-thumbs">
									<div class="product-thumbs-track ps-slider owl-carousel">
										<c:forEach items="${listImageDetails}" var="image">
											<div class="pt active">
												<img
													src="<c:url value="/template/web/img/product-single/${image.imageUrl}"/>"
													alt="">
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="product-details">
									<div class="pd-title">
										<span></span>
										<h3>${product.name}</h3>
										<a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
									</div>
									<div class="pd-rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i> <span>(5)</span>
									</div>
									<div class="pd-desc">
										<p>${product.description}</p>
										<h4>
											<c:if test="${product.sellPrice < product.originPrice}">
												${product.sellPrice} đ<span>${product.originPrice}đ</span>
											</c:if>
											<c:if test="${product.sellPrice == product.originPrice}">
												${product.sellPrice} đ
											</c:if>

										</h4>
									</div>
									<div class="pd-color">
										<h6>Màu Sắc</h6>
										<div class="pd-color-choose">
											<div class="cc-item">
												<input type="radio" id="cc-black"> <label
													for="cc-black"></label>
											</div>
											<div class="cc-item">
												<input type="radio" id="cc-yellow"> <label
													for="cc-yellow" class="cc-yellow"></label>
											</div>
											<div class="cc-item">
												<input type="radio" id="cc-violet"> <label
													for="cc-violet" class="cc-violet"></label>
											</div>
										</div>
									</div>
									<div class="pd-size-choose">
										<div class="sc-item">
											<input type="radio" id="sm-size">
											<label for="sm-size">s</label>
										</div>
										<div class="sc-item">
											<input type="radio" id="md-size">
											<label for="md-size">m</label>
										</div>
										<div class="sc-item">
											<input type="radio" id="lg-size">
											<label for="lg-size">l</label>
										</div>
										<div class="sc-item">
											<input type="radio" id="xl-size"> <label for="xl-size">xs</label>
										</div>
									</div>
									<p>
										Còn lại: <span>1 sản phẩm</span>
									</p>

									<div class="quantity">
										<%--<div class="pro-qty">
											<input type="text" value="1">
										</div>--%>
										<button type="submit" class="primary-btn pd-cart">
											Thêm vào giỏ
										</button>
										<%--<a href="#" class="primary-btn pd-cart">Thêm vào giỏ</a>--%>
									</div>
									<ul class="pd-tags">
										<li><span>Loại</span>: ${product.groupProduct}</li>
										<li><span>TAGS</span>: Quần áo, nữ, kaki</li>
									</ul>
									<div class="pd-share">

										<div class="pd-social">
											<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
												class="ti-twitter-alt"></i></a> <a href="#"><i
												class="ti-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>

					<div class="product-tab">
						<div class="tab-item">
							<ul class="nav" role="tablist">
								<li><a class="active" data-toggle="tab" href="#tab-1"
									role="tab">${product.description}</a></li>

								<li><a data-toggle="tab" href="#tab-3" role="tab">Đánh
										giá(02)</a></li>
							</ul>
						</div>
						<div class="tab-item-content">
							<div class="tab-content">
								<div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
									<div class="product-content">
										<div class="row">
											<div class="col-lg-7">

												<p>Sản phẩm được làm từ chất liệu kaki:</p>
												<ul>
													<li>Thoáng mát</li>
													<li>Trẻ trung</li>
													<li>Bắt kịp xu hướng</li>

												</ul>

											</div>
											<div class="col-lg-5">
												<img
													src="<c:url value="/template/web/img/product-single/product-1.jpg"/>"
													alt="">
											</div>
										</div>
									</div>
								</div>

								<div class="tab-pane fade" id="tab-3" role="tabpanel">
									<div class="customer-review-option">
										<h4>2 Bình luận</h4>
										<div class="comment-option">
											<div class="co-item">

												<div class="avatar-text">
													<div class="at-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Thành Long <span>2/11/2020</span>
													</h5>
													<div class="at-reply">Tuyệt vời !</div>
												</div>
											</div>
											<div class="co-item">

												<div class="avatar-text">
													<div class="at-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Minh Đạt <span>10/11/2020</span>
													</h5>
													<div class="at-reply">Sản phẩm rất tốt !</div>
												</div>
											</div>
										</div>
										<div class="personal-rating">
											<h6>Đánh giá của bạn</h6>
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-o"></i>
											</div>
										</div>
										<div class="leave-comment">
											<h4>Bình luận</h4>
											<form action="#" class="comment-form">
												<div class="row">
													<div class="col-lg-12">
														<textarea placeholder="Bình luận"></textarea>
														<button type="submit" class="site-btn">Gửi</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>




			</div>
		</div>
	</section>
	<!-- Product Shop Section End -->

	<!-- Related Products Section End -->
	<div class="related-products spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Sản phẩm liên quan</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="product-item">
						<div class="pi-pic">
							<img
								src="<c:url value="/template/web/img/products/women-1.jpg"/>"
								alt="">
							<div class="sale">Sale</div>
							<div class="icon">
								<i class="icon_heart_alt"></i>
							</div>
							<ul>
								<li class="w-icon active"><a href="#"><i
										class="icon_bag_alt"></i></a></li>
								<li class="quick-view"><a href="#">+ Quick View</a></li>
								<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
							</ul>
						</div>
						<div class="pi-text">
							<div class="catagory-name">Coat</div>
							<a href="#">
								<h5>Pure Pineapple</h5>
							</a>
							<div class="product-price">
								$14.00 <span>$35.00</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="product-item">
						<div class="pi-pic">
							<img
								src="<c:url value="/template/web/img/products/women-2.jpg"/>"
								alt="">
							<div class="icon">
								<i class="icon_heart_alt"></i>
							</div>
							<ul>
								<li class="w-icon active"><a href="#"><i
										class="icon_bag_alt"></i></a></li>
								<li class="quick-view"><a href="#">+ Quick View</a></li>
								<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
							</ul>
						</div>
						<div class="pi-text">
							<div class="catagory-name">Shoes</div>
							<a href="#">
								<h5>Guangzhou sweater</h5>
							</a>
							<div class="product-price">$13.00</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="product-item">
						<div class="pi-pic">
							<img
								src="<c:url value="/template/web/img/products/women-3.jpg"/>"
								alt="">
							<div class="icon">
								<i class="icon_heart_alt"></i>
							</div>
							<ul>
								<li class="w-icon active"><a href="#"><i
										class="icon_bag_alt"></i></a></li>
								<li class="quick-view"><a href="#">+ Quick View</a></li>
								<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
							</ul>
						</div>
						<div class="pi-text">
							<div class="catagory-name">Towel</div>
							<a href="#">
								<h5>Pure Pineapple</h5>
							</a>
							<div class="product-price">$34.00</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="product-item">
						<div class="pi-pic">
							<img
								src="<c:url value="/template/web/img/products/women-4.jpg"/>"
								alt="">
							<div class="icon">
								<i class="icon_heart_alt"></i>
							</div>
							<ul>
								<li class="w-icon active"><a href="#"><i
										class="icon_bag_alt"></i></a></li>
								<li class="quick-view"><a href="#">+ Quick View</a></li>
								<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
							</ul>
						</div>
						<div class="pi-text">
							<div class="catagory-name">Towel</div>
							<a href="#">
								<h5>Converse Shoes</h5>
							</a>
							<div class="product-price">$34.00</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Related Products Section End -->
</body>
</html>