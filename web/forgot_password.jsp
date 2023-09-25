
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>MEDINOVA - Hospital Website</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="login-form" style=" margin-top: 50px;">
        <h2>Quên mật khẩu</h2>
        <form action="forgot_password" method="POST">
            <input type="text" name="email" placeholder="Địa chỉ email" required><br>
            <input type="submit" value="Gửi yêu cầu">
        </form>
        <div class="back-to-login-link">
        <a href="login">Quay lại trang đăng nhập</a>
    </div>
    </div>
    
</body>
</html>
<%@ include file="/include/footer.jsp" %>
