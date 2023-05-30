/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author ADMIN
 */
public class DAOChange {
    public void changePassword(String email, String password){
        try {
                String stmSql = "update Account set Password = ? where Email = ?";
                Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(stmSql);
                ps.setString(2, email);
                ps.setString(1, password);
                ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public void changeInformation(String fullName, String address, String phone, Boolean gender, String picture, String email){
        try {
                String stmSql = "update Account set Fullname = ? , Address = ? , Phone_Number = ? , Gender = ? , Profile_Picture = ? "
                        + " where Email = ?";
                Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(stmSql);
                ps.setString(1, fullName);
                ps.setString(2, address);
                ps.setString(3, phone);
                ps.setBoolean(4, gender);
                ps.setString(5, picture);
                ps.setString(6, email);
                ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
