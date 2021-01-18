<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết đơn hàng</title>
</head>
<body>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Chi tiết hóa đơn</span>
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
            <div class="content-wrapper">
            <div class="content">
                <div class="invoice-wrapper rounded border bg-white py-5 px-3 px-md-4 px-lg-5">
                    <div class="d-flex justify-content-between">
                        <h2 class="text-dark font-weight-medium">Hóa đơn #2365546</h2>
                    </div>
                    <div class="row pt-5">
                        <div class="col-xl-6 col-lg-6">
                            <p class="text-dark mb-2">Gửi đến:</p>
                            <address>
                                Nguyễn Văn A
                                <br> 111 Đường 123 Quận 9 TPHCM
                                <br> Số điện thoại: +91 5264 521 943
                            </address>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <p class="text-dark mb-2">Chi tiết</p>
                            <address>
                                Mã hóa đơn:
                                <span class="text-dark">#2365546</span>
                                <br> Ngày : 2/11/2020
                      
                            </address>
                        </div>
                    </div>
                    <table style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Đơn giá</th>
                                <th>Giảm giá</th>
                                <th>Tổng giá</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Áo thun</td>
                                <td>1</td>
                                <td>100.000</td>
                                <td>0 đ</td>
                                <td>100.000</td>
                            </tr>
                        
                        </tbody>
                    </table>
                    <div class="row justify-content-end">
                        <div class="col-lg-5 col-xl-4 col-xl-3 ml-sm-auto">
                            <ul class="list-unstyled mt-4">
                                <li class="mid pb-3 text-dark"> TỔNG SỐ TIỀN
                                    <span class="d-inline-block float-right text-default">100.000 đ</span>
                                </li>
                                 <li class="mid pb-3 text-dark"> GIẢM GIÁ
                                    <span class="d-inline-block float-right text-default">50.000 đ</span>
                                </li>
                                 <li class="mid pb-3 text-dark"> THÀNH TIỀN
                                    <span class="d-inline-block float-right text-default">50.000 đ</span>
                                </li>
                            </ul>
                            <a href="#" class="btn btn-block mt-2 btn-lg btn-danger btn-pill">HỦY ĐƠN HÀNG</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        </div>
    </div>
</div>
<!-- Register Form Section End -->
</body>
</html>