/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author Ngo Tung Son
 */
public class StudentDBContext extends DBContext<Student> {

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Student> list() {
        ArrayList<Student> students = new ArrayList<>();
        String sql = "SELECT [sid],sname,gender,dob,created_time FROM Student";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Student s = new Student();
                int sid = rs.getInt("sid");
                String sname = rs.getString("sname");
                boolean gender = rs.getBoolean("gender");
                java.sql.Date dob = rs.getDate("dob");
                Timestamp timestamp = rs.getTimestamp("created_time");
                java.util.Date created_time = new Date(timestamp.getTime());
                s.setId(sid);
                s.setName(sname);
                s.setGender(gender);
                s.setDob(dob);
                s.setCreated_time(created_time);
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }
    
}
