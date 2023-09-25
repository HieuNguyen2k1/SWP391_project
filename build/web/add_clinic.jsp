<%@ include file="include/logout.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="model.service.DoctorService" id="getDoc"></jsp:useBean>
<jsp:useBean class="model.service.ClinicSerivce" id="getSpec"></jsp:useBean>
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
                            <form action="clinic_register" method="POST">
                                <div class="form-group">
                                    <label for="cName">Clinic Name</label>
                                    <input name="cName" type="text" class="form-control" id="cName" placeholder="Enter Clinic Name">
                                </div>
                                <div class="form-group">
                                    <label for="contactPhone">Contact Phone</label>
                                    <input name="contactPhone" type="text" class="form-control" id="contactPhone" placeholder="Enter Contact Phone">
                                </div>
                                <div class="form-group">
                                    <label for="specialist">Specialist</label>
                                    <select name="specialist" class="form-control" id="specialist">
                                        <c:forEach items="${getSpec.getAllClinic()}" var="c">
                                            <option value="${c.getSpecialist()}">${c.getSpecialist()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="cliAddress">Clinic Address</label>
                                    <input name="cliAddress" type="text" class="form-control" id="cliAddress" placeholder="Enter Clinic Address">
                                </div>
                                <div class="form-group">
                                    <label for="dId">Doctor</label>
                                    <select name="dId" class="form-control" id="dId">
                                        <c:forEach items="${getDoc.getAllDoc()}" var="g">
                                            <option value="${g.getdId()}">${g.getFullName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <button type="submit"  class="btn btn-primary">Add Clinic</button>
                            </form>
                        </div>
                    </div>
                </div>
                </body>
                </html>
