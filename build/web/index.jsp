<!DOCTYPE html>
<html lang="en">

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
        <script>
            if (window.performance && window.performance.navigation.type === 2) {
                // Trang được chuyển hướng từ servlet LogoutServlet
                history.replaceState(null, '', 'login.jsp');
                window.addEventListener('popstate', function (event) {
                    window.location.href = 'login.jsp';
                });
            }
        </script>
    </head>
    
    <body>

        <!-- Hero Start -->
        <div class="container-fluid bg-primary py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row justify-content-start">
                    <div class="col-lg-8 text-center text-lg-start">
                        <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5" style="border-color: rgba(256, 256, 256, .3) !important;">Xin chào đã đến với Medinova</h5>
                        <h1 class="display-1 text-white mb-md-4">Chuyên nghiệp – Tận tâm – Thân thiện</h1>

                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->


      
    </body>
</html>
