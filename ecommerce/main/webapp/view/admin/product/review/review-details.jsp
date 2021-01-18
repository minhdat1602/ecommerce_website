<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết đánh giá</title>
</head>
<body>
<input type="hidden" id="flag-index" value=".list-review-page">
	<h3 class="ml-4 mt-3">Chi tiết đánh giá</h3>
	<div class="customer-review-option ml-5">
		<h2>Áo khoác kaki Routine</h2>
		<img alt="" src="<c:url value="/template/admin/images/products/product-3.jpg"/>">
		<div class="personal-rating">
			<h5>Số sao trung bình</h5>
			<div class="rating">
				<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
					class="fa fa-star"></i> <i class="fa fa-star"></i> <i
					class="fa fa-star-o"></i>
			</div>
		</div>
		<h4>2 Bình luận</h4>
		
		<div class="comment-option">
			<div class="co-item">
		
				<div class="avatar-text">
					<div class="at-rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<h5>
						Minh Đạt <span>2/11/2020</span>
					</h5>
					<div class="at-reply mb-1">Sản phẩm mặc rất đẹp !</div>
					<h6>Trả lời: <input type="text" name="reply-comment" class="f-13" style="height: 30px;width: 250px"/></h6>
				</div>
			</div>
			<div class="co-item">
		
				<div class="avatar-text">
					<div class="at-rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<h5>
						Thành Long <span>3/11/2020</span>
					</h5>
					<div class="at-reply mb-1">Vải rất tốt, không bị phai màu</div>
					<h6>Trả lời: <input type="text" name="reply-comment" class="f-13" style="height: 30px;width: 250px"/></h6>
				</div>
			</div>
			
			
		</div>
		
		
	</div>
</body>
</html>