/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Question;
import entity.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAORole {
    public List<Role> getListRole(){
        try {
            List<Role> lsR = new ArrayList<>();
            String stmSql = "select * from Account_Role";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Role r = new Role(rs.getInt(1), rs.getString(2));
                lsR.add(r);
            }
            return lsR;
        } catch (Exception e) {
        }
        return null;
    }
}
