/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Question;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAOCheck {

    public boolean checkEmail(String email) {
        try {
            String stmSql = "select * from Account where Email = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Have error!");
        }
        return false;
    }

    public void addAccount(String fullname, boolean gender, String address, String email, String password, String phone, int roleId, int questionId, int answerId, String picture) {
        try {
            String stmSql = "insert into Account([Fullname]\n"
                    + "      ,[Gender]\n"
                    + "      ,[Address]\n"
                    + "      ,[Email]\n"
                    + "      ,[Password]\n"
                    + "      ,[Phone_Number]\n"
                    + "      ,[Role_ID]\n"
                    + "      ,[Status]\n"
                    + "      ,[Secure_Question_ID]\n"
                    + "      ,[Secure_Answer_ID]\n"
                    + "      ,[Profile_Picture]) values (?,?,?,?,?,?,?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setString(1, fullname);
            ps.setBoolean(2, gender);
            ps.setString(3, address);
            ps.setString(4, email);
            ps.setString(5, password);
            ps.setString(6, phone);
            ps.setInt(7, roleId);
            ps.setBoolean(8, false);
            ps.setInt(9, questionId);
            ps.setInt(10, answerId);
            ps.setString(11, picture);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Have error!");
        }
    }
    public boolean checkExistPassword(String email, String pass){
        try {
            String stmSql = "select * from Account where Email = ? and Password = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
    public boolean checkSecure(String email, int idQ, int idA){
        try {
            String stmSql = "select * from Account where Email = ? and Secure_Question_ID = ? and Secure_Answer_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setString(1, email);
            ps.setInt(2, idQ);
            ps.setInt(3, idA);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
}
