<%@page import="model.entity.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean class="model.service.DoctorService" id="getDoc"></jsp:useBean>
<jsp:useBean class="model.service.ClinicSerivce" id="getCli"></jsp:useBean>
<jsp:useBean class="model.service.PatientService" id="getPat"></jsp:useBean>
<jsp:useBean class="model.service.AppointmentService" id="getApp"></jsp:useBean>
<% Patient patientObj = (Patient) session.getAttribute("patientObj");%>

<!DOCTYPE html>
<%@ include file="include/logout.jsp" %>
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
                            <form name="appointment_register" method="POST">
                                <input type="hidden" name="pId" value="${patientObj.getpId()}">
                                <div class="form-group">
                                    <label for="floatingText">Clinic</label>
                                    <select name="cId" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                        <c:forEach items="${getCli.getAllClinic()}" var="c">
                                            <option value="${c.getcId()}">${c.getcName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="date">Date</label>
                                    <input type="date" class="form-control" id="date" name="date">
                                </div>
                                <div class="form-group">
                                    <label for="dId">Doctor</label>
                                    <select name="dId" class="form-control" id="dId">
                                        <c:forEach items="${getDoc.getAllDoc()}" var="g">
                                            <option value="${g.getdId()}">${g.getFullName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                                </div>
                                <div class="text-center">
                                    <button st="text-center" type="submit" class="btn btn-primary btn-lg">Add Appointment</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    </body>
                    </html>
                    <%@ include file="/include/footer.jsp" %>