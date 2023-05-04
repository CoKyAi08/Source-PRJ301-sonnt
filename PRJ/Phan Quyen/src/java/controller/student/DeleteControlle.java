/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.student;

import controller.auth.BaseRoleController;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author sonnt
 */
public class DeleteControlle extends BaseRoleController {
   
    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
    }

}
