package com.mphasis.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mphasis.model.User;
import com.mphasis.myUtils.MyUtility;

public class UserDaoImple implements UserDao {

	@Override
	public User getUser(String userName) {
		Connection con;
	User user=null;
	
	try {
		 con=MyUtility.getMydataSource().getConnection();
		 String sql="select* from user where username=?";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, userName);
		ResultSet rst=pst.executeQuery();
		while(rst.next()) {
			if(user==null) {
				user=new User();
				user.setUid(rst.getLong("uid"));
				user.setUserName(rst.getString("username"));
				user.setRoles(rst.getString("roles"));
		
				
			}
		}
		/*if(user==null) {
			user=new User();
			user.setUserName(userName);
			user.setPassword("Bogus Fellow");
			user.setUid(0L);
			user.setRoles("Fraud");
		}*/
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
		return user;
	}

}
