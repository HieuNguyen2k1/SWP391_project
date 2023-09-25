

<%@ include file="include/logout.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="model.service.DoctorService" id="getDoc"></jsp:useBean>
<jsp:useBean class="model.service.ClinicSerivce" id="getCli"></jsp:useBean>
<jsp:useBean class="model.service.PatientService" id="getPat"></jsp:useBean>
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
                    <div class="container">
                        <h1 class="text-center mt-5">Add Appointment</h1>
                        <form name="add_appointment" method="POST">
                            <div class="form-group">
                                <label for="floatingText">Clinic</label>
                                <select name="cId" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                    <c:forEach items="${getCli.getAllClinic()}" var="c">
                                        <option value="${c.getcId()}">${c.getcName()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="floatingText">Patient</label>
                                <select name="pId" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                    <c:forEach items="${getPat.getAllPa()}" var="c">
                                        <option value="${c.getpId()}">${c.getFullName()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="status">Status</label>
                                <select name="status" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                    <option value="Chưa hoàn thành">Chưa hoàn thành</option>
                                    <option value="Đã hoàn thành">Đã hoàn thành</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="date">Date</label>
                                <input type="date" class="form-control" id="date" name="date">
                            </div>
                            <div class="form-group">
                                <label for="totalAmount">Total Amount</label>
                                <input type="text" class="form-control" id="totalAmount" name="totalAmount">
                            </div>
                            <div class="form-group">
                                <label for="result">Result</label>
                                <select name="result" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                    <option value="Kết quả xét nghiệm bình thường">Kết quả xét nghiệm bình thường</option>
                                    <option value="Kết quả xét nghiệm bất thường">Kết quả xét nghiệm bất thường</option>
                                </select>                            </div>
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
                    </body>
                    </html>
