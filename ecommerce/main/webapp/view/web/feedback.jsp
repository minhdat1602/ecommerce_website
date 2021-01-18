<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phản hồi</title>
</head>
<body>
<input id="flag-index" type="hidden" value=".pages">
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Góp ý</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->

<!-- Faq Section Begin -->
<div class="faq-section spad">
    <div class="container">
        <div class="row">
            <div class="blog-details-inner col-6">
                    <div class="leave-comment">
                        <h4>Góp ý</h4>
                        <form action="#" class="comment-form">
                            <select id="feedback" name="feedback" class="mb-2" style="border: 1px lightgray solid;">
                                <option>Về vấn đề--</option>
                                <option>Sản phẩm</option>
                                <option>Chính sách</option>
                                <option>Giao diện</option>
                                <option>Khác</option>
                            </select>
                            <div class="row">
                                <div class="col-lg-12">
                                    <textarea placeholder="Lời góp ý"></textarea>
                                    <button type="submit" class="site-btn">Gửi Góp ý</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        </div>
    </div>
</div>
<!-- Faq Section End -->
</body>
</html>