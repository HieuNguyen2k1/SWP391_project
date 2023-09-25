<%@page import="model.entity.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="row mt-4">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Full Name</th>
                                        <th>Clinic Name</th>
                                        <th>Appointment Date</th>
                                        <th>Status</th>
                                        <th>Total Amount</th>
                                        <th>Result</th>
                                        <th>Description</th>
                                        <th>Doctor Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${getApp.getAppointByPat(patientObj.getpId())}" var="a">
                                        <tr >
                                            <td>${a.getPatName()}</td>
                                            <td>${a.getcName()}</td>
                                            <td>${a.getDate()}</td>
                                            <td>${a.getStatus()}</td>
                                            <td>${a.getTotalAmount()}</td>
                                            <td>${a.getResult()}</td>
                                            <td>${a.getDescription()}</td>
                                            <td>${a.getDocName()}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    </body>
                    </html>
