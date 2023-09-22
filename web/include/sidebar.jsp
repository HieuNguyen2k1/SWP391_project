<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String role = (String) session.getAttribute("role");
%>

<ul class="nav flex-column">
    <c:if test="${role eq 'admin'}">
        <li class="nav-item">
            <a class="nav-link" href="admin.jsp">Dashboard</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="view_doctor.jsp">Doctor</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="view_patient.jsp">Patient</a>
        </li>
    </c:if>
    <c:if test="${role eq 'doctor'}">
        <li class="nav-item">
            <a class="nav-link" href="view_patient.jsp">Patient</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="add_appointment">Add Appointment</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="view_appointment.jsp">View Appointments</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="view_clinic.jsp">Clinics</a>
        </li>
    </c:if>
    <c:if test="${role eq 'patient'}">
        <li class="nav-item">
            <a class="nav-link" href="appointment_register">Add Appointment</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="userview_appointment.jsp">View Appointments</a>
        </li>
    </c:if>
</ul>
