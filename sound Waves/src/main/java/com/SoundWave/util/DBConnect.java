package com.SoundWave.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	//Create variables to store values and declaring them
		private static String url = "jdbc:mysql://localhost:3306/soundwave";
		private static String username = "root";
		private static String password = "############";
		
		//create a variable to catch the value which returns from the database connection method
		private static Connection con;
		
		
		//Create a method to get database connection
		public static Connection getConnection() {
			
			try {
				
				//The driver which makes the db connection
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url, username, password);
			}
			catch(Exception e) {
				System.out.println("Database connection is not success");
			}
			
			return con;
			
		}

}

