package ecommerceshopping.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import ecommerceshopping.model.*;

public class UserDatabaseDao {
	Connection connection;

	    public UserDatabaseDao(Connection connection) {
	       this.connection = connection;
	   }


	    //for register user 
	    public boolean saveUser(User user) {
	        boolean set = false;
	        try {
	            //Insert register data to database
	            String query = "insert into user(name,email,password) values(?,?,?)";

	            PreparedStatement pt = this.connection.prepareStatement(query);
	            pt.setString(1, user.getName());
	            pt.setString(2, user.getEmail());
	            pt.setString(3, user.getPassword());

	            pt.executeUpdate();
	            set = true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return set;
	    }

	    //log user
	    public User logUser(String email, String password) {
	        User user = null;

	        try {
	            String query = "select * from user where email=? and password=?";
	            PreparedStatement ps = this.connection.prepareStatement(query); 
	            ps.setString(1,email);
	            ps.setString(2, password);
	            
	            ResultSet rs  = ps.executeQuery();
	            
	            if(rs.next()){
	                 user = new User();
	                 user.setId(rs.getInt("id"));
	                 user.setName(rs.getString("name"));
	                 user.setEmail(rs.getString("email"));
	                // user.setPassword(rs.getString("password"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return user;
	    }
	
}
