/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package view.student;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Student;

/**
 *
 * @author Ngo Tung Son
 */
public class SearchView extends HttpServlet {

    void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Student> students = (ArrayList<Student>) req.getAttribute("students");
        resp.getWriter().println("<!DOCTYPE html>");
        resp.getWriter().println("<html>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<title>Page Title</title>");
        resp.getWriter().println("</head>");
        resp.getWriter().println("<body>");
        resp.getWriter().println("<table border=\"1px\">");
        resp.getWriter().println("<tr>");
        resp.getWriter().println("<td>Id</td>");
        resp.getWriter().println("<td>Name</td>");
        resp.getWriter().println("<td>Gender</td>");
        resp.getWriter().println("<td>Dob</td>");
        resp.getWriter().println("</tr>");
        for (Student s : students) {
            resp.getWriter().println("<tr>");
            resp.getWriter().println("<td>"+s.getId()+"</td>");
            resp.getWriter().println("<td>"+s.getName()+"</td>");
            resp.getWriter().println("<td>"+s.isGender()+"</td>");
            resp.getWriter().println("<td>"+s.getDob()+"</td>");
            resp.getWriter().println("</tr>");
        }
        resp.getWriter().println("</table>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

}
