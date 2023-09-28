/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;

import model.entity.Admin;
import model.entity.Doctor;
import model.entity.Patient;
import model.repository.AdminRepository;
import model.service.DoctorService;
import model.service.PatientService;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        HttpSession session = request.getSession();
        session.setAttribute("role", role);
        
        if (role.equals("admin")) {
            Admin a = AdminRepository.getLoginAdmin(email, password);
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                
                response.sendRedirect("admin.jsp");
                session.setAttribute("adminObj", a);
            }else{
                request.setAttribute("message", "Dang nhap tai khoan cua Admin that bai");
                request.getRequestDispatcher("login").forward(request, response);
            }
        }
        if (role.equals("doctor")) {
            Doctor d = DoctorService.doctorLogin(email, password);
            if (d==null) {
                request.setAttribute("message", "Dang nhap tai khoan cua Doctor that bai");
                request.getRequestDispatcher("login").forward(request, response);
            }else{
                request.getRequestDispatcher("doctor.jsp").forward(request, response);
                session.setAttribute("doctorObj", d);
            }
        }
        if (role.equals("patient")) {
            Patient p = PatientService.patientLogini(email, password);
            if (p==null) {
                request.setAttribute("message", "Dang nhap tai khoan cua Patient that bai");
                request.getRequestDispatcher("login").forward(request, response);
            }else{
                request.getRequestDispatcher("patient.jsp").forward(request, response);
                session.setAttribute("patientObj", p);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
