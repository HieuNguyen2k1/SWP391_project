<%@ include file="include/logout.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>MEDINOVA - Hospital Management</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/management.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 sidebar">
                    <%@ include file="include/sidebar.jsp" %>
                </div>
                <div class="col-md-10 content">
                    <div class="row">
                        <div class="col-md-6 offset-md-3">
                            <form action="doctor_register" method="POST">
                                <div class="form-group">
                                    <label for="fullName">Full Name</label>
                                    <input name="fullName" type="text" class="form-control" id="fullName" placeholder="Enter full name">
                                </div>
                                <div class="form-group">
                                    <label for="dateOfBirth">Date of Birth</label>
                                    <input name="dateOfBirth" type="date" class="form-control" id="dateOfBirth">
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Enter phone number">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="specialist">Specialist</label>
                                    <input name="specialist" type="text" class="form-control" id="specialist" placeholder="Enter specialist">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="password" type="password" class="form-control" id="password" placeholder="Enter password">
                                </div>
                                <button type="submit"  class="btn btn-primary">Add Doctor</button>
                            </form>
                        </div>
                    </div>
                </div>
</body>
</html>
