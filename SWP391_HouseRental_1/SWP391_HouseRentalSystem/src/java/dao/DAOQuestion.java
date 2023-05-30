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
public class DAOQuestion {
    public List<Question> getListQuestion(){
        try {
            List<Question> lsQ = new ArrayList<>();
            String stmSql = "select * from Secure_Questions";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Question q = new Question(rs.getInt(1), rs.getString(2));
                lsQ.add(q);
            }
            return lsQ;
        } catch (Exception e) {
        }
        return null;
    }
    
}
