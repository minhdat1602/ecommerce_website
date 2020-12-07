<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<body>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Đăng ký</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->
<!-- Register Section Begin -->
<div class="register-login-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="register-form">
                    <h2>Đăng ký</h2>
                    <form action="#">
                        <div class="group-input">
                            <label for="username">Tên*</label>
                            <input type="text" id="username">
                        </div>
                        <div class="group-input">
                            <label for="con-pass">Năm sinh *</label>
                            <select style="width: 80px;height: 30px; border: 1px lightgray solid">
                                <option value="">1994</option>
                                <option value="">1995</option>
                                <option value="">1996</option>
                                <option value="">1997</option>
                                <option value="">1998</option>
                                <option value="">1999</option>
                                <option value="">2000</option>
                                <option value="">2001</option>
                                <option value="">2002</option>

                            </select>
                        </div>
                        <div class="group-input">
                            <label for="con-pass">Giới tính *</label>
                            <select style="width: 80px;height: 30px; border: 1px lightgray solid">
                                <option>Chọn--</option>
                                <option>Nam</option>
                                <option>Nữ</option>
                                <option>Khác</option>
                            </select>
                        </div>
                        <div class="group-input">
                            <label for="username">Email*</label>
                            <input type="text" id="username">
                        </div>
                        <div class="group-input">
                            <label for="username">Số điện thoại*</label>
                            <input type="text" id="username">
                        </div>
                        <div class="group-input">
                            <label for="pass">Mật khẩu *</label>
                            <input type="text" id="pass">
                        </div>
                        <div class="group-input">
                            <label for="con-pass">Nhập lại mật khẩu *</label>
                            <input type="text" id="con-pass">
                        </div>
                        <button type="submit" class="site-btn register-btn">Đăng Kí</button>
                    </form>
                    <div class="switch-login">
                        <a href="./login.html" class="or-login">Hoặc Đăng Nhập</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Register Form Section End -->
</body>
</html>