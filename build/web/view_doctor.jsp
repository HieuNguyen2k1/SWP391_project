<%-- 
    Document   : view_doctor
    Created on : Jun 28, 2023, 3:39:29 PM
    Author     : ASUS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean class="model.service.DoctorService" id="show"></jsp:useBean>
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
                                        <th>FullName</th>
                                        <th>Date of Birth</th>      
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Specialist</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${show.getAllDoc()}" var="g">
                                        <tr id="row${g.dId}">
                                            <td>${g.fullName}</td>
                                            <td>${g.dateOfBirth}</td>
                                            <td>${g.email}</td>
                                            <td>${g.phone}</td>
                                            <td>${g.specialist}</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-doc-id="${g.dId}" data-bs-toggle="modal" data-bs-target="#exampleModal2">
                                                    Update
                                                </button>
                                                <a class="btn btn-danger" href="delete_doc?dId=${g.dId}">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <form action="edit_doctor" method="get">
                        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-warning">
                                        <h5 class="modal-title" id="exampleModalLabel">Update Doctor</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">               
                                        <div class="container-fluid">
                                            <input name="dId" type="text" class="form-control w-100" id="docIdInput" placeholder="jhondoe" autocomplete="off" hidden>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="fullName" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onkeyup="updateEmployeeName(event)">
                                                <label for="floatingText">Full Name</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="dateOfBirth" type="date" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onchange="updateEmployeeDate(event)">
                                                <label for="floatingText">Date of Birth</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="address" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onkeyup="updateEmployeeAddress(event)">
                                                <label for="floatingText">Address</label>
                                            </div>
                                        </div>
                                        <div class="container-fluid">
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="phone" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onkeyup="updateEmployeePhone(event)">
                                                <label for="floatingText">Phone</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="email" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onkeyup="updateEmployeeEmail(event)">
                                                <label for="floatingText">Email</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input  name="specialist" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onkeyup="updateEmployeeName(event)">
                                                <label for="">Specialist</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input  name="password" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" onkeyup="updateEmployeeName(event)">
                                                <label for="">Password</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="messageDoctorUpdate" class="error-text text-center text-warning"></div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary" id="updateDoctorButton">Save change</button>
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
                                                        const dId = button.getAttribute('data-doc-id'); // Lấy giá trị empID từ thuộc tính data-empid

                                                        // Thực hiện các thay đổi cần thiết với empId
                                                        // Ví dụ: gán giá trị empId vào một trường input trong modal
                                                        const docIdInput = document.getElementById('docIdInput');
                                                        docIdInput.value = dId;
                                                    });
        </script>
    </body>

</html>
