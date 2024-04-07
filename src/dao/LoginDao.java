package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Enum.Role;
import entities.Doctor;

public class LoginDao {
	
	public static boolean checkAdmin(String name){
		Connection conn = null;
		
		try{
			conn = Conn.getcon();
			
			String query = "SELECT * FROM users WHERE name =  ? ";
			 PreparedStatement pstmt = conn.prepareStatement(query);
	            // Set the parameters
	            pstmt.setString(1, name);
	            
	            // Execute the query
	            ResultSet rs = pstmt.executeQuery();
	            if(rs.next()){
	            	if(rs.getString("role").toUpperCase().equals(Role.ADMIN.toString())){
	            		System.out.println("doctor email found");
	            		return true;
	            	} else {
	            		return false;
	            	}
	            }
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return false;
	}
	
	public boolean isRegistered(String name, String password){
		
		Connection conn = null;
		
		try{
			conn = Conn.getcon();
			
			String query = "SELECT * FROM users WHERE name = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			
			ps.setString(1, name);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return false;
	}
	
//	public boolean addDoctor(Doctor doctor) {
//		checkAdmin(doctor.getEmail());
//		
//		if(isAdmin == false) {
//			return false;
//		}
//		
//		Connection conn = null;
//		
//		try{
//			conn = Conn.getcon();
//			
//			String query = "INSERT INTO doctor (name, email, phone, gender, speciality, experience, rating) VALUES (?, ?, ?, ?, ?, ?, ?)";
//			 PreparedStatement pstmt = conn.prepareStatement(query);
//	            // Set the parameters
//	            pstmt.setString(1, doctor.getName());
//	            pstmt.setString(2, doctor.getEmail());
//	            pstmt.setString(3, doctor.getPhone());
//	            pstmt.setString(4, doctor.getGender());
//	            pstmt.setString(5, doctor.getSpeciality());
//	            pstmt.setString(6, doctor.getExperience());
//	            pstmt.setString(7, doctor.getRating());
//	
//	            // Execute the query
//	            int rowsInserted = pstmt.executeUpdate();
//	            if (rowsInserted > 0) {
//	                return true;
//	            }
//		}catch(Exception e){
//			e.printStackTrace();
//		}finally{
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		return false;
//	}
}
