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


				<li class="has-sub active expand"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse"
					data-target="#dashboard" aria-expanded="false"
					aria-controls="dashboard"> <i
						class="mdi mdi-view-dashboard-outline"></i> <span class="nav-text">Danh
							sách</span> <b class="caret"></b>
				</a>
					<ul class="collapse show" id="dashboard"
						data-parent="#sidebar-menu">
						<div class="sub-menu">

							<%-- </a></li>
							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#components" aria-expanded="false"
								aria-controls="components"> <span class="nav-text">Sản phẩm</span>
									<b class="caret"></b>
							</a>
								<ul class="collapse" id="components">
									<div class="sub-menu">
									
										<li><a href="<c:url value ="/view/admin/product/list-product.jsp"/>">Tất cả</a></li>
										<li><a href="badge.html">Bán chạy</a></li>
										
									</div>
								</ul></li> --%>

							<li><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/product/list-product.jsp"/>">
									<span class="nav-text">Sản phẩm</span>
							</a></li>

							<li><a class="sidenav-item-link"
								href="<c:url value ="/view/admin/order/list-order.jsp"/>"> <span
									class="nav-text">Đơn hàng</span>
							</a></li>


						</div>
					</ul></li>


				<!-- <li class="has-sub"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse"
					data-target="#ui-elements" aria-expanded="false"
					aria-controls="ui-elements"> <i
						class="mdi mdi-folder-multiple-outline"></i> <span
						class="nav-text">Quản lý</span> <b class="caret"></b>
				</a>
					<ul class="collapse" id="ui-elements" data-parent="#sidebar-menu">
						<div class="sub-menu">


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#components" aria-expanded="false"
								aria-controls="components"> <span class="nav-text">Components</span>
									<b class="caret"></b>
							</a>
								<ul class="collapse" id="components">
									<div class="sub-menu">

										<li><a href="alert.html">Alert</a></li>

										<li><a href="badge.html">Badge</a></li>

										<li><a href="breadcrumb.html">Breadcrumb</a></li>

										<li><a href="button-default.html">Button Default</a></li>

										<li><a href="button-dropdown.html">Button Dropdown</a></li>

										<li><a href="button-group.html">Button Group</a></li>

										<li><a href="button-social.html">Button Social</a></li>

										<li><a href="button-loading.html">Button Loading</a></li>

										<li><a href="card.html">Card</a></li>

										<li><a href="carousel.html">Carousel</a></li>

										<li><a href="collapse.html">Collapse</a></li>

										<li><a href="list-group.html">List Group</a></li>

										<li><a href="modal.html">Modal</a></li>

										<li><a href="pagination.html">Pagination</a></li>

										<li><a href="popover-tooltip.html">Popover & Tooltip</a>
										</li>

										<li><a href="progress-bar.html">Progress Bar</a></li>

										<li><a href="spinner.html">Spinner</a></li>

										<li><a href="switcher.html">Switcher</a></li>

										<li><a href="table.html">Table</a></li>

										<li><a href="tab.html">Tab</a></li>

									</div>
								</ul></li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#icons" aria-expanded="false" aria-controls="icons">
									<span class="nav-text">Icons</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="icons">
									<div class="sub-menu">

										<li><a href="material-icon.html">Material Icon</a></li>

										<li><a href="flag-icon.html">Flag Icon</a></li>

									</div>
								</ul></li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#forms" aria-expanded="false" aria-controls="forms">
									<span class="nav-text">Forms</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="forms">
									<div class="sub-menu">

										<li><a href="basic-input.html">Basic Input</a></li>

										<li><a href="input-group.html">Input Group</a></li>

										<li><a href="checkbox-radio.html">Checkbox & Radio</a></li>

										<li><a href="form-validation.html">Form Validation</a></li>

										<li><a href="form-advance.html">Form Advance</a></li>

									</div>
								</ul></li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#maps" aria-expanded="false" aria-controls="maps">
									<span class="nav-text">Maps</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="maps">
									<div class="sub-menu">

										<li><a href="google-map.html">Google Map</a></li>

										<li><a href="vector-map.html">Vector Map</a></li>

									</div>
								</ul></li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#widgets" aria-expanded="false"
								aria-controls="widgets"> <span class="nav-text">Widgets</span>
									<b class="caret"></b>
							</a>
								<ul class="collapse" id="widgets">
									<div class="sub-menu">

										<li><a href="general-widget.html">General Widget</a></li>

										<li><a href="chart-widget.html">Chart Widget</a></li>

									</div>
								</ul></li>


						</div>
					</ul></li>
 -->

				<li class="has-sub"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse"
					data-target="#charts" aria-expanded="false" aria-controls="charts">
						<i class="mdi mdi-chart-pie"></i> <span class="nav-text">Quản
							lý</span> <b class="caret"></b>
				</a>
					<ul class="collapse" id="charts" data-parent="#sidebar-menu">
						<div class="sub-menu">

							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#product" aria-expanded="false"
								aria-controls="widgets"> <span class="nav-text">Sản
										phẩm</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="product">
									<div class="sub-menu">
										<li><a
											href="<c:url value ="/view/admin/product/list-category-product.jsp"/>">Loại
												sản phẩm</a></li>
										<li><a
											href="<c:url value ="/view/admin/customer/list-customer-group.jsp"/>">Đối
												tượng khách hàng</a></li>
										<li><a
											href="<c:url value ="/view/admin/product/size/list-size-product.jsp"/>">Kích
												cỡ</a></li>
										<li><a
											href="<c:url value ="/view/admin/product/color/list-color-product.jsp"/>">Màu
												sắc</a></li>
										<li><a
											href="<c:url value ="/view/admin/product/suppliers/list-suppliers.jsp"/>">Nhà
												phân phối</a></li>
									</div>
								</ul></li>

							<!-- 
							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#user" aria-expanded="false"
								aria-controls="widgets"> <span class="nav-text">Khách hàng</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="user">
									<div class="sub-menu">
										<li><a href="chart-widget.html">Nhóm khách hàng</a></li>
										<li><a href="general-widget.html">Lượng truy cập</a></li>
									</div>
								</ul></li> -->

							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#qtv" aria-expanded="false" aria-controls="widgets">
									<span class="nav-text">Quản trị viên</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="qtv">
									<div class="sub-menu">
										<li><a
											href="<c:url value ="/view/admin/admin-manager/list-admin.jsp"/>">Danh
												sách</a></li>
										<li><a
											href="<c:url value ="/view/admin/admin-manager/list-permission.jsp"/>">Các
												quyền</a></li>
									</div>
								</ul></li>
							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#widgets" aria-expanded="false"
								aria-controls="widgets"> <span class="nav-text">Khuyến
										mãi</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="widgets">
									<div class="sub-menu">

										<li><a href="general-widget.html">Chương trình</a></li>

										<li><a href="chart-widget.html">Mã giảm giá</a></li>
										<li><a href="chart-widget.html">Deal mỗi tuần</a></li>
									</div>
								</ul></li>
							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#comment" aria-expanded="false"
								aria-controls="widgets"> <span class="nav-text">Bình
										luận</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="comment">
									<div class="sub-menu">
										<li><a href="general-widget.html">Sản phẩm</a></li>
										<li><a href="chart-widget.html">Bài viết</a></li>
									</div>
								</ul></li>

							<li><a class="sidenav-item-link" href="user-profile.html">
									<span class="nav-text">Câu hỏi</span>
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


							<li><a class="sidenav-item-link" href="user-profile.html">
									<span class="nav-text">Lượt truy cập</span>
							</a></li>
							<li><a class="sidenav-item-link" href="user-profile.html">
									<span class="nav-text">Lượt mua hàng</span>
							</a></li>
							<li><a class="sidenav-item-link" href="user-profile.html">
									<span class="nav-text">Đánh giá sản phẩm</span>
							</a></li>


							<!-- 	<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#authentication" aria-expanded="false"
								aria-controls="authentication"> <span class="nav-text">Authentication</span>
									<b class="caret"></b>
							</a>
								<ul class="collapse" id="authentication">
									<div class="sub-menu">

										<li><a href="sign-in.html">Sign In</a></li>

										<li><a href="sign-up.html">Sign Up</a></li>

									</div>
								</ul></li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#others" aria-expanded="false"
								aria-controls="others"> <span class="nav-text">Others</span>
									<b class="caret"></b>
							</a>
								<ul class="collapse" id="others">
									<div class="sub-menu">

										<li><a href="invoice.html">invoice</a></li>

										<li><a href="error.html">Error</a></li>

									</div>
								</ul></li> -->


						</div>
					</ul></li>

				<!-- 
				<li class="has-sub"><a class="sidenav-item-link"
					href="javascript:void(0)" data-toggle="collapse"
					data-target="#documentation" aria-expanded="false"
					aria-controls="documentation"> <i
						class="mdi mdi-book-open-page-variant"></i> <span class="nav-text">Documentation</span>
						<b class="caret"></b>
				</a>
					<ul class="collapse" id="documentation" data-parent="#sidebar-menu">
						<div class="sub-menu">


							<li class="section-title">Getting Started</li>


							<li><a class="sidenav-item-link" href="introduction.html">
									<span class="nav-text">Introduction</span>

							</a></li>


							<li><a class="sidenav-item-link" href="setup.html"> <span
									class="nav-text">Setup</span>

							</a></li>


							<li><a class="sidenav-item-link" href="customization.html">
									<span class="nav-text">Customization</span>

							</a></li>


							<li class="section-title">Layouts</li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#headers" aria-expanded="false"
								aria-controls="headers"> <span class="nav-text">Layout
										Headers</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="headers">
									<div class="sub-menu">

										<li><a href="header-fixed.html">Header Fixed</a></li>

										<li><a href="header-static.html">Header Static</a></li>

										<li><a href="header-light.html">Header Light</a></li>

										<li><a href="header-dark.html">Header Dark</a></li>

									</div>
								</ul></li>


							<li class="has-sub"><a class="sidenav-item-link"
								href="javascript:void(0)" data-toggle="collapse"
								data-target="#sidebar-navs" aria-expanded="false"
								aria-controls="sidebar-navs"> <span class="nav-text">layout
										Sidebars</span> <b class="caret"></b>
							</a>
								<ul class="collapse" id="sidebar-navs">
									<div class="sub-menu">

										<li><a href="sidebar-open.html">Sidebar Open</a></li>

										<li><a href="sidebar-minimized.html">Sidebar
												Minimized</a></li>

										<li><a href="sidebar-offcanvas.html">Sidebar
												Offcanvas</a></li>

										<li><a href="sidebar-with-footer.html">Sidebar With
												Footer</a></li>

										<li><a href="sidebar-without-footer.html">Sidebar
												Without Footer</a></li>

										<li><a href="right-sidebar.html">Right Sidebar</a></li>

									</div>
								</ul></li>


							<li><a class="sidenav-item-link" href="rtl.html"> <span
									class="nav-text">RTL Direction</span>

							</a></li>


						</div>
					</ul></li> -->


			</ul>

		</div>



	</div>
</aside>