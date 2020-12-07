<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thay đổi thông tin</title>
</head>
<body>
	<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Home</a>
                    <span>Thay đổi thông tin</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Form Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="register-form">
                    <h2>THAY ĐỔI THÔNG TIN</h2>
                    <form action="#">
                        <div class="group-input">
                            <label for="pass">Tên</label>
                            <input type="text" id="pass">
                        </div>
                        
                        
                        <div class="group-input">
                            <label for="pass">Email</label>
                            <input type="text" id="pass">
                        </div>
                        <div class="group-input">
                            <label for="pass">Số điện thoại</label>
                            <input type="text" id="pass">
                        </div>
                        <div class="group-input">
                            <label for="pass">Xác nhận(Nhập Mật khẩu *)</label>
                            <input type="text" id="pass">
                        </div>
                        <button type="submit" class="site-btn register-btn">Cập nhật</button>
                    </form>
                    <div class="switch-login">
                        <a href = "<c:url value = "/view/web/change-password.jsp"/>" class="or-login">Đổi mật khẩu</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Register Form Section End -->
</body>
</html>