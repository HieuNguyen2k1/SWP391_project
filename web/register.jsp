<%-- 
    Document   : register
    Created on : Jun 23, 2023, 9:33:28 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/navbar.jsp" %>
<!DOCTYPE html>
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
     
    <div class="registration-form">
         <h1>Đăng ký tài khoản patient mới</h1>
        <form action="patient_register" method="POST">
            <input type="text" name="fullName" placeholder="Họ và tên" required><br>
            <input type="password" name="password" placeholder="Mật khẩu" required><br>
            <input type="text" name="address" placeholder="Địa chỉ" required><br>
            <input type="text" name="phone" placeholder="Số điện thoại" required><br>
            <select name="gender" required>
            <option value="Nam">Nam</option>
            <option value="Nữ">Nữ</option>
            </select><br>
             <input type="text" name="email" placeholder="email" required><br>
            <label for="birthdate">Ngày sinh:</label>
        <input type="date" id="birthdate" name="birthdate" required><br>
            <input type="submit" value="Đăng ký">
        </form>
    </div>
    </body>
</html>
<%@ include file="/include/footer.jsp" %>