<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
						<a href="<c:url value = "/view/web/index.jsp"/>"><i
							class="fa fa-home"></i> Trang chủ</a> <span>Đăng ký</span>
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
						<form action="dang-ky" id="form" method="post">
							<div class="group-input">
								<label for="fullname">Họ và tên*</label> <input type="text"
									id="fullname" name="fullname" required  pattern="[a-zA-Z]+">
									<p></p>
							</div>
							<div class="group-input">
								<label for="gender">Ngày sinh *</label>
								<input id="birth" name="birth" type="date" required>
								<p></p>
							</div>
							<div class="group-input">
								<label for="gender">Giới tính *</label> <select id="gender"  name="gender" 
									style="width: 80px; height: 30px; border: 1px lightgray solid" required>
									<option value="">Chọn--</option>
									<option value="nam">Nam</option>
									<option value="nu">Nữ</option>
									<option value="khac">Khác</option>
								</select>
								<p></p>
							</div>
							<div class="group-input">
								<label for="username">Email*</label> 
								<input type="email" id="email" name="email" required>
								<p></p>
							</div>
							<div class="group-input">
								<label for="username">Số điện thoại*</label> 
								<input type="text" id="phone" name="phone" required pattern="[0-9]+" >
								<p></p>
							</div>
							<div class="group-input">
								<label for="fullname">Địa chỉ*</label> <input type="text"
									id="address" name="address" required  pattern="[a-zA-Z]+">
									<p></p>
							</div>
							<div class="group-input">
								<label for="username">Tên đăng nhập*</label> <input type="text"
									id="username" name="username" required  pattern="[a-zA-Z]+">
									<p></p>
							</div>
							<div class="group-input">
								<label for="password">Mật khẩu *</label>
								<input type="password" id="password" name="password" required>
								<p></p>
							</div>
							<div class="group-input">
								<label for="repeatPassword">Nhập lại mật khẩu *</label>
								<input type="password" id="repeatPassword" name="repeatPassword" required>
								<p></p>
							</div>
							<button id="submitBtn" type="submit" class="site-btn register-btn">Đăng Kí</button>
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