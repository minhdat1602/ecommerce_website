<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/common/taglib.jsp" %>
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
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Cửa hàng</span>
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
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    <div class="filter-widget">
                        <h4 class="fw-title">Dành cho:</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">Nam</a></li>
                            <li><a href="#">Nữ</a></li>
                            <li><a href="#">Trẻ Em</a></li>
                        </ul>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Nhãn <Hiệu></Hiệu></h4>
                        <div class="fw-brand-check">
                            <div class="bc-item">
                                <label for="bc-calvin">
                                    Yame
                                    <input type="checkbox" id="bc-calvin">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-diesel">
                                    Routine
                                    <input type="checkbox" id="bc-diesel">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-polo">
                                    Just Men
                                    <input type="checkbox" id="bc-polo">
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                        </div>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Giá</h4>
                        <div class="filter-range-wrap">
                            <div class="range-slider">
                                <div class="price-input">
                                    <div class="input-group mb-3">
                                        <input name="price" type="text" class="form-control" placeholder="Giá từ" >
                                        <div class="input-group-append">
                                            <span class="input-group-text" id="basic-addon2">đ</span>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <input  name="price" type="text" class="form-control" placeholder="Đến" >
                                        <div class="input-group-append">
                                            <span class="input-group-text" id="basic-addon1">đ</span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                            data-min="33" data-max="98">
                            <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                            <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                        </div>
                    </div>
                    <a href="#" class="filter-btn">Lọc</a>
                </div>
                <div class="filter-widget">
                    <h4 class="fw-title">Màu Sắc</h4>
                    <div class="fw-color-choose">
                        <div class="cs-item">
                            <input type="radio" id="cs-black">
                            <label class="cs-black" for="cs-black">Đen</label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" id="cs-violet">
                            <label class="cs-violet" for="cs-violet">Tím</label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" id="cs-blue">
                            <label class="cs-blue" for="cs-blue">Xanh</label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" id="cs-yellow">
                            <label class="cs-yellow" for="cs-yellow">Vàng</label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" id="cs-red">
                            <label class="cs-red" for="cs-red">Đỏ</label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" id="cs-green">
                            <label class="cs-green" for="cs-green">Xanh Lá</label>
                        </div>
                    </div>
                </div>
                <div class="filter-widget">
                    <h4 class="fw-title">Size</h4>
                    <div class="fw-size-choose">
                        <div class="sc-item">
                            <input type="radio" id="s-size">
                            <label for="s-size">s</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" id="m-size">
                            <label for="m-size">m</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" id="l-size">
                            <label for="l-size">l</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" id="xs-size">
                            <label for="xs-size">xs</label>
                        </div>
                    </div>
                </div>
                <div class="filter-widget">
                    <h4 class="fw-title">Tags</h4>
                    <div class="fw-tags">
                        <a href="#">Quần</a>
                        <a href="#">Áo</a>
                        <a href="#">Áo Khoác</a>
                        <a href="#">Quần kaki</a>
                        <a href="#">Quần tây</a>
                        <a href="#">Thắt lưng</a>

                    </div>
                </div>
            </div>
            <div class="col-lg-9 order-1 order-lg-2 ">
                <div class="product-show-option">
                    <div class="row">
                        <div class="col-lg-7 col-md-7 mb-4">
                            <div class="select-option">
                                <label class="mr-2"  for="p-show" id="labelForTotalItem">Hiển thị:</label>
                                <select
                                id="p-show" class="p-show">
                                <option value="">10</option>
                                <option value="">15</option>
                                <option value="">20</option>
                            </select> 
                            <label class="ml-2 mr-2" for="sorting" id="labelForSorting">Sắp xếp theo: </label>
                            <select id="sorting" class="sorting">
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
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-1.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-2.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-3.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-4.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-5.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-6.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-7.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-8.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="product-item">
                                <a href="<c:url value="/view/web/product-details.jsp"/>">
                                    <div class="pi-pic">
                                        <img src="<c:url value="/template/web/img/products/product-9.jpg"/>" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">ÁO</div>
                                        <a >
                                            <h5>Áo Len 2020</h5>
                                        </a>
                                        <div class="product-price">
                                            140.000đ
                                            <span>350.000đ</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
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
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-1.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-2.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-3.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-4.png"/>" alt="">
                </div>
            </div>
            <div class="logo-item">
                <div class="tablecell-inner">
                    <img src="<c:url value="/template/web/img/logo-carousel/logo-5.png"/>" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Partner Logo Section End -->
</body>
</html>