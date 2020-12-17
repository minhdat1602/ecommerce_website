<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách hóa đơn</title>
</head>
<body>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href = "<c:url value = "/view/web/index.jsp"/>"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Danh sách hóa đơn</span>
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
            <table class="table text-center">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Mã đơn</th>
                <th scope="col">Sản phẩm</th>
                <th scope="col">Số lượng sản phẩm</th>
                <th scope="col">Tổng giá</th>
                <th scope="col">Ngày đặt</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Chi tiết</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                        <th scope="row">#1</th>
                        <td>Áo thun</td>
                        <td>1</td>
                        <td>100.000 đ</td>
                        <td>2/11/2020</td>
                        <td>
                            <div class="btn btn-primary">Đã tiếp nhận</div>
                        </td>
                        <td><a class="btn" style="text-decoration: none;" href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
                    </tr>
                    <tr>
                        <th scope="row">#2</th>
                        <td>Áo thun, Quần kaki</td>
                        <td>2</td>
                        <td>650.000 đ</td>
                        <td>5/11/2020</td>
                        <td>
                            <div class="btn btn-warning">Đã đặt hàng</div>
                        </td>
                        <td><a class="btn" style="text-decoration: none;" href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
                    </tr>
                    <tr>
                        <th scope="row">#3</th>
                        <td>Quần kaki</td>
                        <td>1</td>
                        <td>220.000 đ</td>
                        <td>10/11/2020</td>
                        <td>
                            <div class="btn btn-info">Đang giao</div>
                        </td>
                        <td><a class="btn" style="text-decoration: none;" href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
                    </tr>
                    <tr>
                        <th scope="row">#4</th>
                        <td>Áo thun, Quần kaki</td>
                        <td>2</td>
                        <td>555.000 đ</td>
                        <td>2/11/2020</td>
                        <td>
                            <div class="btn btn-danger">Đã hủy</div>
                        </td>
                        <td><a class="btn" style="text-decoration: none;" href="<c:url value='/view/admin/order/order-detail.jsp'/>">Xem</a></td>
                    </tr>
                    
        </tbody>
    </table>
        </div>
    </div>
</div>
<!-- Register Form Section End -->
</body>
</html>