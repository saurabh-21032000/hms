package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entities.Signup;

public class Signupdao {
    
    public int insertdata(Signup signup) throws ClassNotFoundException, SQLException {
        int rowsAffected = 0;
        
        try (Connection conn = Conn.getcon();
             PreparedStatement pstmt = conn.prepareStatement("INSERT INTO users (name, password, email, phone, gender, role) VALUES (?, ?, ?, ?, ?, ?)")) {
            
            pstmt.setString(1, signup.getName());
            pstmt.setString(2, signup.getPass());
            pstmt.setString(3, signup.getEmail());
            pstmt.setString(4, signup.getPhone());
            pstmt.setString(5, signup.getGender().toString());
            pstmt.setString(6, signup.getRole().toString());
            
            rowsAffected = pstmt.executeUpdate();
            
        } catch (SQLException e) {
            // Log the exception or throw a custom exception
            e.printStackTrace();
            throw e; // Rethrow the exception to propagate it to the caller
        } catch (Exception e) {
            // Log the exception or throw a custom exception
            e.printStackTrace();
            throw e; // Rethrow the exception to propagate it to the caller
        }
        
        return rowsAffected;
    }
    
    
    
}
