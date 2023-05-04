/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.student;

import dal.DBContext;
import helper.DateTimeHelper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author Ngo Tung Son
 */
public class SearchController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    
    void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String raw_name = req.getParameter("name");
        String raw_from = req.getParameter("from");
        String raw_to = req.getParameter("to");
        
        if(raw_name !=null)
        {
            try {
                String name = raw_name;
                Date from = (raw_from == null || raw_from.length() ==0)?null:
                        DateTimeHelper.toDate(raw_from, "yyyy-MM-dd");
                Date to = (raw_to == null || raw_to.length() ==0)?null:
                        DateTimeHelper.toDate(raw_to, "yyyy-MM-dd");
                DBContext db = new DBContext();
                ArrayList<Student> students = db.getStudents(name, from, to);
                req.setAttribute("students", students);
                
            } catch (ParseException ex) {
                Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        req.getRequestDispatcher("../view/student/search.jsp").forward(req, resp);
    }
}
