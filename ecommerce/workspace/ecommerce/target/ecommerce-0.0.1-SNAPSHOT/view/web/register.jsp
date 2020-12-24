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
						<form action="register" id="form">
							<div class="group-input">
								<label for="username">Tên*</label> <input type="text"
									id="username" name="username" pattern="[a-zA-Z]+" required>
									<p></p>
							</div>
							<div class="group-input">
								<label for="gender">Ngày sinh *</label>
								<input id="birth" name="birth" type="date"  name="birth" required>
								<p></p>
							</div>
							<div class="group-input">
								<label for="gender">Giới tính *</label> <select id="gender"
									style="width: 80px; height: 30px; border: 1px lightgray solid" required>
									<option value="">Chọn--</option>
									<option value="name">Nam</option>
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
								<input type="text" id="phone" name="phone" pattern="[0-9]+" required>
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