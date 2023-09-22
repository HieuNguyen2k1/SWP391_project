<!DOCTYPE html>
<html>
    <%@ include file="include/logout.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean class="model.service.PatientService" id="showPa"></jsp:useBean>
    <jsp:useBean class="model.service.AppointmentService" id="showAp"></jsp:useBean>
    <jsp:useBean class="model.service.DoctorService" id="showDoc"></jsp:useBean>
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
            <c:if test="${empty adminObj}">
                <c:redirect url="./login.jsp" ></c:redirect>
            </c:if>
            <div class="row">
                <div class="col-md-2 sidebar">

                    <%@include file="include/sidebar.jsp" %>
                </div>
                <div class="col-md-10 content">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="rounded bg-light m-2 p-3">
                                <p>Number of Doctors:</p>
                                <h3>${showDoc.totalCountDoc()}</h3>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="rounded bg-light m-2 p-3">
                                <p>Number of Patients:</p>
                                <h3>${showPa.totalPa()}</h3>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="rounded bg-light m-2 p-3">
                                <p>Number of Appointments:</p>
                                <h3>${showAp.totalApp()}</h3>
                            </div>
                        </div>
                    </div>

    </body>
</html>
