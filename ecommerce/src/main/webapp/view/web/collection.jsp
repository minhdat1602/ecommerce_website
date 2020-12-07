<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Các bộ sưu tập</title>
</head>
<body>
<input id="flag-index" type="hidden" value=".collection-page">
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Các bộ sưu tập</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Blog Section Begin -->
<section class="blog-section spad">
    <div class="container">
        <div class="row">
            <h3 class="d-block w-100 mb-3 text-center">Các bộ sưu tập nổi bật</h3>
            <div class="col-lg-12 order-1 order-lg-2">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-item">
                            <div class="bi-pic">
                                <img src="<c:url value="/template/web/img/blog/blog-3.jpg"/>" alt="">
                            </div>
                            <div class="bi-text">
                                <a href = "<c:url value = "/view/web/collection-details.jsp"/>">
                                    <h4>BỘ SƯU TẬP THU - ĐÔNG 2020</h4>
                                </a>
                                <p class="mt-2">Hãy sắm cho mình những bộ quần áo đầy ấm cho mùa thu-đông năm nay</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-item">
                            <div class="bi-pic">
                                <img src="<c:url value="/template/web/img/blog/blog-5.jpg"/>" alt="">
                            </div>
                            <div class="bi-text">
                                <a href = "<c:url value = "/view/web/collection-details.jsp"/>">
                                    <h4>BỘ SƯU TẬP MÙA HÈ 2020</h4>
                                </a>
                                <p class="mt-2">Lựa chọn những sản phẩm cho mùa hè năm nay cùng Fashi</p>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->
</body>
</html>