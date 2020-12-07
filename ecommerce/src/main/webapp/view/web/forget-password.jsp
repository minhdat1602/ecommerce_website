<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
</head>
<body>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Quên mật khẩu</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->

<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href="./index.html"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Quên mật khẩu</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="login-form">
                    <h2>Quên mật khẩu</h2>
                    <form action="#">
                        <div class="group-input">
                            <label for="username">Tên đăng nhập *</label>
                            <input type="text" id="username">
                        </div>
                        <div class="group-input">
                            <label for="pass">Email hoặc Số điện thoại đã đăng ký *</label>
                            <input type="text" id="pass">
                        </div>
                        <button type="submit" class="site-btn login-btn">Gửi</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Register Form Section End -->
</body>
</html>