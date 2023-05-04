/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Ngo Tung Son
 */
public class Student {
    private int id;
    private String name;
    private Date dob;
    private boolean gender;
    private java.util.Date created_time;

    public java.util.Date getCreated_time() {
        return created_time;
    }

    public void setCreated_time(java.util.Date created_time) {
        this.created_time = created_time;
    }
    

    public Student() {
    }

    public Student(int id, String name, Date dob, boolean gender) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }
    
}
