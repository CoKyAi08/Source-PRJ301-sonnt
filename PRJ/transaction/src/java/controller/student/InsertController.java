/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.student;

import dal.DepartmentDBContext;
import dal.SkillDBContext;
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
import model.Skill;
import model.Student;

/**
 *
 * @author Hello Ngo Tung Son handsome
 */
public class InsertController extends HttpServlet {
   
   

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
        DepartmentDBContext db = new DepartmentDBContext();
        ArrayList<Department> list = db.list();
        SkillDBContext skDB = new SkillDBContext();
        request.setAttribute("depts", list);
        ArrayList<Skill> skills = skDB.list();
        request.setAttribute("skills", skills);
        request.getRequestDispatcher("../view/student/insert.jsp").forward(request, response);
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
        s.setName(name);
        s.setGender(gender);
        s.setDept(d);
        s.setDob(dob);
        
        String[] skids = request.getParameterValues("skid");
        for (String skid : skids) {
            Skill sk = new Skill();
            sk.setId(Integer.parseInt(skid));
            s.getSkills().add(sk);
        }
        
        StudentDBContext db = new StudentDBContext();
        db.insert(s);
        
        //response.getWriter().println("inserted successful!");
        response.sendRedirect("list");
    }

    


}
