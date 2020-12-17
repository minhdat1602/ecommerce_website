<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Các chương trình giảm giá</title>
</head>
<body>
<input id="flag-index" type="hidden" value=".sale-page">
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Chương trình giảm giá</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog-section spad">
    <div class="container">
        <div class="row">
            <h3 class="d-block w-100 mb-3 text-center">Các chương trình khuyến mãi đang diễn ra</h3>
            <div class="col-lg-12 order-1 order-lg-2">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-item">
                            <div class="bi-pic">
                                <img src="<c:url value="/template/web/img/blog/blog-1.jpg"/>" alt="">
                            </div>
                            <div class="bi-text">
                                <a href="./sale-details.jsp">
                                    <h4>Black Friday</h4>
                                </a>
                                <p> <span>2/11/2020  -  10/11/2020</span></p>
                                <h3 class="mt-3">GIẢM GIÁ 50%</h3>
                                <p class="mt-2">Ngày hội mua sắm, mua hàng thả ga cùng Fashi, giảm giá 50% tất cả các mặt hàng</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-item">
                            <div class="bi-pic">
                                <img src="<c:url value="/template/web/img/blog/blog-2.jpg"/>" alt="">
                            </div>
                            <div class="bi-text">
                                <a href="./sale-details.jsp">
                                    <h4>Deal of week</h4>
                                </a>
                                <p><span>2/11/2020  -  -9/11/2020</span></p>
                                <h3 class="mt-3">GIẢM GIÁ 70%</h3>
                                <p class="mt-2">Cùng săn deal chất mỗi tuần cùng Fashi. Giảm 70% đối với sản phẩm tuần này</p>
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