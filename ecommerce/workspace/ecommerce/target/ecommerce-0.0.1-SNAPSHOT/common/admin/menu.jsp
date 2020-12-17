<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<aside class="left-sidebar bg-sidebar">
	<div id="sidebar" class="sidebar sidebar-with-footer">
		<!-- Aplication Brand -->
		<div class="app-brand">
			<a href="<c:url value ="/index.jsp"/>"> <svg class="brand-icon"
					xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid"
					width="30" height="33" viewBox="0 0 30 33">
                        <g fill="none" fill-rule="evenodd">
                            <path class="logo-fill-blue" fill="#7DBCFF"
						d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                            <path class="logo-fill-white" fill="#FFF"
						d="M11 4v25l8 4V0z" />
                        </g>
                    </svg> <span class="brand-name">Fashi - Quản trị</span>
			</a>
		</div>
		<!-- begin sidebar scrollbar -->
		<div class="sidebar-scrollbar">

			<!-- sidebar menu -->
			<ul class="nav sidebar-inner" id="sidebar-menu">


				<li class="has-sub"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse"
					data-target="#dashboard" aria-expanded="false"
					aria-controls="dashboard"> <i
						class="mdi mdi-view-dashboard-outline"></i> <span class="nav-text">Danh
							sách</span> <b class="caret"></b>
				</a>
					<ul class="collapse" id="dashboard"
						data-parent="#sidebar-menu">
						<div class="sub-menu">

							<li class="list-product-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/product/list-product.jsp"/>">
									<span class="nav-text">Sản phẩm</span>
							</a></li>

							<li class="list-order-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/order/list-order.jsp"/>"> <span
									class="nav-text">Đơn hàng</span>
							</a></li>


						</div>
					</ul></li>

				<li class="has-sub"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse" data-target="#sp"
					aria-expanded="false" aria-controls="charts"> <i
						class="mdi mdi-chart-pie"></i> <span class="nav-text">Quản
							lý</span> <b class="caret"></b>
				</a>
					<ul class="collapse" id="sp" data-parent="#sidebar-menu">
						<div class="sub-menu">

							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#product" aria-expanded="false"
								aria-controls="widgets"> <span class="nav-text">Sản
										phẩm</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="product">
									<div class="sub-menu">
										
										<li class="list-product-group-page"><a
											href="<c:url value ="/view/admin/product/list-product-group.jsp"/>">Nhóm
												sản phẩm</a></li>
										<li class="list-size-page"><a
											href="<c:url value ="/view/admin/product/size/list-size-product.jsp"/>">Kích
												cỡ</a></li>
										<li class="list-color-page"><a
											href="<c:url value ="/view/admin/product/color/list-color-product.jsp"/>">Màu
												sắc</a></li>
										<li class="list-suppliers-page"><a
											href="<c:url value ="/view/admin/product/suppliers/list-suppliers.jsp"/>">Nhà
												phân phối</a></li>
										<li class="list-review-page"><a
											href="<c:url value ="/view/admin/product/review/list-review-product.jsp"/>">
												Đánh giá</a></li>
									</div>
								</ul></li>



							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#qtv" aria-expanded="false" aria-controls="widgets">
									<span class="nav-text">Quản trị viên</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="qtv">
									<div class="sub-menu">
										<li class="list-manager-page"><a
											href="<c:url value ="/view/admin/admin-manager/list-admin.jsp"/>">Danh
												sách</a></li>
										<li class="list-permission-page"><a
											href="<c:url value ="/view/admin/admin-manager/list-permission.jsp"/>">Các
												quyền</a></li>
									</div>
								</ul></li>
							<li  class="list-customer-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/customer/list-customer-information.jsp"/>">
									<span class="nav-text">Khách hàng</span>
							</a></li>
							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#sale" aria-expanded="false" aria-controls="sale">
									<span class="nav-text">Khuyến mãi</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="sale">
									<div class="sub-menu">

										<li class="list-promotion-page"><a
											href="<c:url value ="/view/admin/sale/list-promotions.jsp"/>">Chương
												trình</a></li>

										<li class="list-coupon-page"><a href="<c:url value ="/view/admin/sale/list-coupon.jsp"/>">Mã giảm giá</a></li>

									</div>
								</ul></li>
								
							<li class="list-collection-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/collection/list-collection.jsp"/>"> <span
									class="nav-text">Bộ sưu tập</span>
							</a></li>



						</div>

					</ul></li>


				<li class="has-sub"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse"
					data-target="#pages" aria-expanded="false" aria-controls="pages">
						<i class="mdi mdi-image-filter-none"></i> <span class="nav-text">Thống
							kê</span> <b class="caret"></b>
				</a>
					<ul class="collapse" id="pages" data-parent="#sidebar-menu">
						<div class="sub-menu">

							<li class="sales-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/statistical/sales.jsp"/>">
									<span class="nav-text">Doanh số</span>
							</a></li>
							<li class="buy-time-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/statistical/buy-times.jsp"/>">
									<span class="nav-text">Lượt mua hàng</span>
							</a></li>
							<li class="access-time-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/statistical/access-times.jsp"/>">
									<span class="nav-text">Lượt truy cập</span>
							</a></li>
							
							<li class="favorite-product-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/statistical/favorite-product.jsp"/>">
									<span class="nav-text">Sản phẩm yêu thích</span>
							</a></li>
							<li class="feedback-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/statistical/list-feedback.jsp"/>">
									<span class="nav-text">Góp ý</span>
							</a></li>
							<li class="faq-page"><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/statistical/list-faq.jsp"/>">
									<span class="nav-text">Câu hỏi thường gặp</span>
							</a></li>

						</div>
					</ul></li>



			</ul>

		</div>



	</div>
</aside>
