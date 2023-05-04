/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import entity.MyRect;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author Ngo Tung Son
 */
public class RectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int num = Integer.parseInt(req.getParameter("num"));
        ArrayList<MyRect> rects = new ArrayList<>();
        Random rand = new Random();
        for (int i = 0; i < num; i++) {
            MyRect r = new MyRect();
            r.setW(50 + rand.nextInt(101));
            r.setH(50 + rand.nextInt(101));
            r.setX(rand.nextInt(500 - r.getW()));
            r.setY(rand.nextInt(500 - r.getH()));
            rects.add(r);
        }
        req.setAttribute("rects",rects);
        req.getRequestDispatcher("view/rect").forward(req, resp);
        

    }

}
