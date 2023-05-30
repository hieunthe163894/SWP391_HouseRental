/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Answer;
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
public class DAOAnswer {
    public List<Answer> getListAnswer(int questionId){
        try {
            List<Answer> lsA = new ArrayList<>();
            String stmSql = "select * from Secure_Answers where Secure_Question_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, questionId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Answer q = new Answer(rs.getInt(1), rs.getInt(2), rs.getString(3));
                lsA.add(q);
            }
            return lsA;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
}
