/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author Ngo Tung Son
 */

public class FirstServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        boolean gender = req.getParameter("gender").equals("male");
        resp.getWriter().println(name + " " + gender);
                
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1 style='color:red;'>I love sonnt</h1>");
       // resp.getWriter().println("<script>alert('mother of life');</script>");
       String local1 = this.getInitParameter("local1");
       String local2 = this.getInitParameter("local2");
       resp.getWriter().println(local1+" "+ local2 + "<br/>");
       
       String global = this.getServletContext().getInitParameter("global");
       resp.getWriter().println(global + "<br/>");
    }

    
    
}
