/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import helper.DateTimeHelper;
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
public class DBContext {
    ArrayList<Student> students = new ArrayList<>();
    public DBContext()
    {
        try {
            students.add(new Student(1, "Quynh Anh",
                    DateTimeHelper.toDate("5/1/2002", "dd/MM/yyyy"),false));
            students.add(new Student(2, "Dang Thuy Trang",
                    DateTimeHelper.toDate("7/6/2002", "dd/MM/yyyy"),false));
            students.add(new Student(3, "Pham Ngoc Huyen",
                    DateTimeHelper.toDate("28/3/2002", "dd/MM/yyyy"),false));
            students.add(new Student(4, "Ngo Tung Son",
                    DateTimeHelper.toDate("20/11/1997", "dd/MM/yyyy"),true));
            students.add(new Student(5, "AAA",
                    DateTimeHelper.toDate("5/1/2002", "dd/MM/yyyy"),true));
            students.add(new Student(6, "AAA",
                    DateTimeHelper.toDate("5/1/2003", "dd/MM/yyyy"),true));
            students.add(new Student(7, "AAA",
                    DateTimeHelper.toDate("5/1/2004", "dd/MM/yyyy"),true));
            students.add(new Student(8, "AAA",
                    DateTimeHelper.toDate("5/1/2005", "dd/MM/yyyy"),true));
            students.add(new Student(9, "AAA",
                    DateTimeHelper.toDate("5/1/2006", "dd/MM/yyyy"),true));
            students.add(new Student(10, "AAA",
                    DateTimeHelper.toDate("5/1/2007", "dd/MM/yyyy"),true));
        } catch (ParseException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Student> getStudents(String name)
    {
        ArrayList<Student> stds = new ArrayList<>();
        for (Student student : students) {
            if(student.getName().toLowerCase().contains(name.toLowerCase()))
                stds.add(student);
        }
        return stds;
    }
    
    //name = "" or != ""
    //from = null or != null
    //to = null or != null
    public ArrayList<Student> getStudents(String name,Date from, Date to)
    {
        ArrayList<Student> stds = new ArrayList<>();
        for (Student student : students) {
            boolean isMatched = true;
            if(!student.getName().toLowerCase().contains(name.toLowerCase()))
                isMatched = false;
            if(from!=null)
                if(student.getDob().compareTo(from)<0)
                    isMatched = false;
            if(to!=null)
                if(student.getDob().compareTo(to)>0)
                    isMatched = false;
            if(isMatched)
                stds.add(student);
        }
        return stds;
    }
}
