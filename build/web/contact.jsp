<%-- 
    Document   : contact
    Created on : Sep 25, 2023, 2:43:14 PM
    Author     : quang
--%>
<!DOCTYPE html>
<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="/include/navbar.jsp" %>
        <title>MEDINOVA - Hospital Website</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container-fluid bg-primary my-5 py-5">
            <div class="container py-5">
                <div class="row gx-5">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="mb-4">
                            <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Thông tin liên hệ</h5>
                            <h1 class="display-4">Bệnh Viện Medinova</h1>
                        </div>
                        <p class="text-white mb-5">Điện thoại: +012 345 6789</p>
                        <p class="text-white mb-5">Email: medinova@gmail.com </p>
                        <p class="text-white mb-5">Địa chỉ: Sidcup DA14 6LT, Vương quốc Anh.</p>
                    </div>
                    <div class="col-lg-6">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1244.0766618013497!2d0.1017362346090436!3d51.418610089040634!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8ac0f061512a5%3A0x1b7de01151a7d77a!2sMedinova!5e0!3m2!1svi!2s!4v1695628735863!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>


        </div>
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="text-center mb-3"> Nếu có thắc mắc, vui lòng liên hệ qua email medinova@gmail.com hoặc điền vào mẫu dưới đây.</div>
                    <div class="card">
                        <div class="card-body">
                            <h1 class="card-title text-center">Liên Hệ</h1>
                            <form action="process_form.php" method="POST">
                                <div class="mb-3">
                                    <label for="full_name" class="form-label">Họ và Tên:</label>
                                    <input type="text" class="form-control" id="full_name" name="full_name" required>
                                </div>
                                <div class="mb-3">
                                    <label for="phone_number" class="form-label">Số Điện Thoại:</label>
                                    <input type="tel" class="form-control" id="phone_number" name="phone_number" required>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="mb-3">
                                    <label for="address" class="form-label">Địa Chỉ:</label>
                                    <input type="text" class="form-control" id="address" name="address" >
                                </div>
                                <div class="mb-3">
                                    <label for="question" class="form-label">Câu Hỏi:</label>
                                    <textarea class="form-control" id="question" name="question" rows="4" required></textarea>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-outline-dark rounded-pill py-3 px-5">Gửi</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<%@ include file="/include/footer.jsp" %>