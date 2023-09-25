
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean class="model.service.AppointmentService" id="show"></jsp:useBean>
<jsp:useBean class="model.service.DoctorService" id="getDoc"></jsp:useBean>
<jsp:useBean class="model.service.ClinicSerivce" id="getCli"></jsp:useBean>
<jsp:useBean class="model.service.PatientService" id="getPat"></jsp:useBean>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/management.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script >
            function doDelete(aId) {
                if (confirm("are U sure to delete with aId= " + aId)) {
                    window.location = "delete_appointment?aId=" + aId;
                }
            }
        </script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 sidebar">
                    <%@ include file="include/sidebar.jsp" %>
                </div>
                <div class="col-md-10 content">
                    <div class="row">
                        <div class="col-md-12 text-right">
                            <a class="btn btn-primary" href="doctor_register">
                                <i class="fas fa-plus"></i> Add Doctor
                            </a>
                        </div>

                    </div>
                    <div class="row mt-4">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Clinic</th>
                                        <th>Patient</th>      
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th>Total Amount</th>
                                        <th>Result</th>
                                        <th>Description</th>
                                        <th>Doctor</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${show.getAllAppointByName()}" var="a">
                                        <tr id="row${a.aId}">
                                            <th>${a.cName}</th>
                                            <th>${a.patName}</th>      
                                            <th>${a.date}</th>
                                            <th>${a.status}</th>
                                            <th>${a.totalAmount}</th>
                                            <th>${a.result}</th>
                                            <th>${a.description}</th>
                                            <th>${a.docName}</th>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-app-id="${a.aId}" data-bs-toggle="modal" data-bs-target="#exampleModal2">
                                                    Update
                                                </button>
                                                <!--<a class="btn btn-danger" href="delete_appointment?aId=${a.aId}">Delete</a>-->
                                                <a class="btn btn-danger" href="#" onclick="doDelete('${a.aId}')">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <form action="edit_appointment" method="get">
                        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-warning">
                                        <h5 class="modal-title" id="exampleModalLabel">Update Appointment</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">               
                                        <div class="container-fluid">
                                            <input name="aId" type="text" class="form-control w-100" id="appIdInput" placeholder="jhondoe" autocomplete="off" hidden>
                                            <div class="form-floating mb-3 ms-auto">
                                                <select name="cId" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                                    <c:forEach items="${getCli.getAllClinic()}" var="c">
                                                        <option value="${c.getcId()}">${c.getcName()}</option>
                                                    </c:forEach>
                                                </select>
                                                <label for="floatingText">Clinic</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <select name="pId" class="form-control w-100" id="cName" placeholder="jhondoe" autocomplete="off" >
                                                    <c:forEach items="${getPat.getAllPa()}" var="c">
                                                        <option value="${c.getpId()}">${c.getFullName()}</option>
                                                    </c:forEach>
                                                </select>
                                                <label for="floatingText">Clinic</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="date" type="date" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="floatingText">Date</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <select name="status" class="form-control w-100" id="status" placeholder="jhondoe" autocomplete="off" >
                                                    <option value="Đang hoàn thành">Đang hoàn thành</option>
                                                    <option value="Chưa hoàn thành">Chưa hoàn thành</option>
                                                    <option value="Đã hoàn thành">Đã hoàn thành</option>
                                                </select>
                                                <label for="floatingText">Status</label>
                                            </div>
                                        </div>
                                        <div class="container-fluid">
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="totalAmount" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off">
                                                <label for="floatingText">Total Amount</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <select name="result" class="form-control w-100" id="result" placeholder="jhondoe" autocomplete="off" >
                                                    <option value="Kết quả xét nghiệm bình thường">Kết quả xét nghiệm bình thường</option>
                                                    <option value="Kết quả xét nghiệm bất thường">Kết quả xét nghiệm bất thường</option>
                                                </select>
                                                <label for="floatingText">Result</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input  name="description" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off">
                                                <label for="">Description</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <select name="dId" class="form-control w-100" id="dId" placeholder="jhondoe" autocomplete="off" >
                                                    <c:forEach items="${getDoc.getAllDoc()}" var="g">
                                                        <option value="${g.getdId()}">${g.getFullName()}</option>
                                                    </c:forEach>
                                                </select>
                                                <label for="floatingText">Doctor</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="messageAppointmentUpdate" class="error-text text-center text-warning"></div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary" id="updateAppointmentButton">Save change</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script>
            const modal = document.getElementById('exampleModal2');

            // Khi modal hiển thị, lấy giá trị empID từ button và thực hiện các thao tác cần thiết
            modal.addEventListener('show.bs.modal', function (event) {
                const button = event.relatedTarget; // Button được nhấn để mở modal
                const aId = button.getAttribute('data-app-id'); // Lấy giá trị empID từ thuộc tính data-empid

                // Thực hiện các thay đổi cần thiết với empId
                // Ví dụ: gán giá trị empId vào một trường input trong modal
                const appIdInput = document.getElementById('appIdInput');
                appIdInput.value = aId;
            });
        </script>
    </body>

</html>
