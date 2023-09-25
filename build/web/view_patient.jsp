
<%@ include file="include/logout.jsp" %>
<jsp:useBean class="model.service.PatientService" id="show"></jsp:useBean>
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
            function doDelete(pId) {
                if (confirm("are U sure to delete with pId= " + pId)) {
                    window.location = "delete_pat?pId=" + pId;
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
                            <a class="btn btn-primary" href="add_patient.jsp">
                                <i class="fas fa-plus"></i> Add Patient
                            </a>
                        </div>

                    </div>
                    <div class="row mt-4">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>FullName</th>

                                        <th>Gender</th>
                                        <th>Date Of Birth</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${show.getAllPa()}" var="p">
                                        <tr id="row${p.pId}">
                                            <td>${p.fullName}</td>
                                            <td>${p.gender}</td>
                                            <td>${p.dateOfBirth}</td>
                                            <td>${p.phone}</td>
                                            <td>${p.email}</td>
                                            <td>${p.address}</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-pate-id="${p.pId}" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                    Update
                                                </button>
                                                <!--<a class="btn btn-danger" href="delete_pat?pId=${p.pId}">Delete</a>-->
                                                <a class="btn btn-danger" href="#" onclick="doDelete('${p.pId}')">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <form action="edit_patient" method="get">
                        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-warning">
                                        <h5 class="modal-title" id="exampleModalLabel">Update Patient</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">               
                                        <div class="container-fluid">
                                            <input name="pId" type="text" class="form-control w-100" id="patIdInput" placeholder="jhondoe" autocomplete="off" hidden>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="fullName" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="floatingText">Full Name</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <select name="gender" class="form-control w-100" id="gender" placeholder="jhondoe" autocomplete="off" >
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                </select>
                                                <label for="floatingText">Gender</label>
                                            </div>

                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="dateOfBirth" type="date" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="floatingText">Date of Birth</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="address" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="floatingText">Address</label>
                                            </div>
                                        </div>
                                        <div class="container-fluid">
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="phone" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="floatingText">Phone</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input name="email" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="floatingText">Email</label>
                                            </div>
                                            <div class="form-floating mb-3 ms-auto">
                                                <input  name="password" type="text" class="form-control w-100" id="floatingText" placeholder="jhondoe" autocomplete="off" >
                                                <label for="">Password</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="messagePatientUpdate" class="error-text text-center text-warning"></div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary" id="updatePatientButton">Save change</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
                    <script>
                                                    const modal = document.getElementById('exampleModal1');

                                                    // Khi modal hiển thị, lấy giá trị empID từ button và thực hiện các thao tác cần thiết
                                                    modal.addEventListener('show.bs.modal', function (event) {
                                                        const button = event.relatedTarget; // Button được nhấn để mở modal
                                                        const pId = button.getAttribute('data-pate-id'); // Lấy giá trị empID từ thuộc tính data-empid

                                                        // Thực hiện các thay đổi cần thiết với empId
                                                        // Ví dụ: gán giá trị empId vào một trường input trong modal
                                                        const patIdInput = document.getElementById('patIdInput');
                                                        patIdInput.value = pId;
                                                    });
                    </script>
                </div>
            </div>
        </div>
    </body>
</html>
