package com.mphasis.myUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;

public class MyUtility {
private static Connection con=null;
private static DataSource mydataSource;
public static DataSource getMydataSource() {
	return mydataSource;
}
public static void setMydataSource(DataSource mydataSource) {
	MyUtility.mydataSource = mydataSource;
}
/*
public static Connection getConnection() {
	if(con==null)
		try {
			con=getMydataSource().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	System.out.println("this is connection object"+con);
	return con;
}
*/
private static SessionFactory mySessionFactory;
public static SessionFactory getMySessionFactory() {
	return mySessionFactory;
}
public static void setMySessionFactory(SessionFactory mySessionFactory) {
	MyUtility.mySessionFactory = mySessionFactory;
}


	
	
	}



