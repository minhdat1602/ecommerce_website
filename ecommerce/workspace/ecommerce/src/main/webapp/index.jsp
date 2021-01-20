<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<c:redirect url="/admin/danh-sach-san-pham?type=list&page=1&maxPageItem=5&sorting=id&sortBy=asc"></c:redirect>
</body>
</html>