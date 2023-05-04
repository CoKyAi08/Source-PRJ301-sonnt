/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.student;

import dal.DepartmentDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import model.Department;
import model.Student;

/**
 *
 * @author Hello Ngo Tung Son handsome
 */
public class EditController extends HttpServlet {
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        StudentDBContext stuDB = new StudentDBContext();
        Student student = stuDB.get(id);
        
        DepartmentDBContext db = new DepartmentDBContext();
        ArrayList<Department> list = db.list();
        request.setAttribute("depts", list);
        request.setAttribute("student", student);
        request.getRequestDispatcher("../view/student/edit.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean gender = request.getParameter("gender").equals("male");
        Date dob = Date.valueOf(request.getParameter("dob"));
        int did = Integer.parseInt(request.getParameter("did"));
        Department d = new Department();
        d.setId(did);
        
        Student s = new Student();
        s.setId(Integer.parseInt(request.getParameter("id")));
        s.setName(name);
        s.setGender(gender);
        s.setDept(d);
        s.setDob(dob);
        
        StudentDBContext db = new StudentDBContext();
        db.update(s);
        response.sendRedirect("list");
    }

    


}
