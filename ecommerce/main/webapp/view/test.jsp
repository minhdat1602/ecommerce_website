<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>

</head>
<body>
<!-- Register Section Begin -->
<script>
    $(document).ready(function (){
        $("#btn").click(function (){
            var username = $("#username").val();
            $.ajax({
                type: 'POST',
                url: '<c:url value="/test"/> ',
                data: {x: username, password: "1"},
                success: function (result){
                    $('#result1').html(result);
                    window.location.href = "<c:url value="/trang-chu"/>";
                }
            });
        })
    })
</script>
    <form>
        <input id="username" type="text">
        <input type="button" id="btn" value="Submit">
        <span id="result1"></span>
    </form>

<!-- Register Form Section End -->
</body>
</html>