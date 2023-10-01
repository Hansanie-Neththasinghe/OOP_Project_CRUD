package com.SoundWave.util;

import com.SoundWave.model.*;
import com.SoundWave.services.artist.IDBUtil;

//import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;





public class songDBUtil implements IDBUtil{
	
	//Create "INSTANCE VARIABLES" (common variables inside the class) in order to make the db connection
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		
		
		public  List<Song> validate(String name){
			
			ArrayList<Song> song = new ArrayList<>();
			
			
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from songs where name = '"+name+"'";
				rs = stmt.executeQuery(sql);
				
				
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String sname = rs.getString(2);
					String artistName = rs.getString(3);
					String genre = rs.getString(4);
					String releasedDate = rs.getString(5);
					String lyricist = rs.getString(6);
					String producer = rs.getString(7);
					String lyrics = rs.getString(8);
					String coverart = rs.getString(9);
					String songtrack = rs.getString(10);
					
					Song s = new Song(id,sname,artistName,genre,releasedDate,lyricist,producer,lyrics,coverart,songtrack);
					
					song.add(s);
				}
				  
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			//
			return song;
		}
		
		//==========================================================================================================
		//Getting file names
		
		public  String getFileName(Part part) {
			String contentDisposition = part.getHeader("content-disposition");
			
			if(!contentDisposition.contains("filename=")) {
				return null;
			}
			int beginIndex = contentDisposition.indexOf("filename=") + 10;
			int endIndex = contentDisposition.length() - 1;
			
			return contentDisposition.substring(beginIndex,endIndex);
		}

		//===============================================================================================================
		//===============================================================================================================
		//------------------------------------ INSERTING DATA TO DATABASE -----------------------------------------------



		
		public  boolean insertsong(String name, String artistName, String genre, String releasedDate, String lyricist, String producer, String lyrics, String imageFileName, String songtrack) {
			boolean isSuccess = false; //created this as a instance variable
			
					
			try {
			
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				
				
				String sql = "insert into songs values(0,'"+name+"','"+artistName+"','"+genre+"','"+releasedDate+"','"+lyricist+"','"+producer+"','"+lyrics+"','"+imageFileName+"','"+songtrack+"')";
				
				//Since there is no result set in insert customer, no need to call the result set method from DBConnect class
				int rs = stmt.executeUpdate(sql);
				
				
				if(rs>0) {//if rs = 1, this is success
					isSuccess = true;
				}
				else {
					//if rs = 0, this is unsuccess
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
		}
		
		//===============================================================================================================
		//===============================================================================================================
		//-------------------------------------------------- UPDATE -----------------------------------------------------
		
		public  boolean updatesong(String id, String name, String artistName, String genre, String releasedDate, String lyricist, String producer, String lyrics, String coverart, String songtrack) {
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update songs set name='"+name+"', artistName='"+artistName+"', genre='"+genre+"', releasedDate='"+releasedDate+"', lyricist='"+lyricist+"', producer='"+producer+"', lyrics='"+lyrics+"', coverart='"+coverart+"', songtrack='"+songtrack+"' where id='"+id+"'  ";
				int rs = stmt.executeUpdate(sql);
				
				//Check the updation is success or not
				//execute update function is returning two values
				// 0 - if unsuccess
				// 1 - if success
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}		
				
				}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}

		

		//===============================================================================================================
		//===============================================================================================================
		//-------------------------------------------------- DATA RETRIEVING -----------------------------------------------------
		
		
		
		public  List<Song> getSongDetails(String Id){
			
			ArrayList<Song> song1 = new ArrayList<>();
			
			//Convert id value to an int (In the database it has stored as a string value)
			int convertedId = Integer.parseInt(Id);
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from songs where id = '"+convertedId+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {  //next() is returning a boolean value, returns 'true' if the execution of sql query is success. else returns 'false'
					//create variables to store data
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String artistName = rs.getString(3);
					String genre = rs.getString(4);
					String releasedDate = rs.getString(5);
					String lyricist = rs.getString(6);
					String producer = rs.getString(7);
					String lyrics = rs.getString(8);
					String coverart = rs.getString(9);
					String songtrack = rs.getString(10);
					
				
					//Create an object from song class and pass those values to that song1 object. (Calling the constructor of Song model class)
					
					Song s = new Song(id, name, artistName, genre, releasedDate, lyricist, producer, lyrics, coverart, songtrack);
					//pass the object s to the array list object called song1.
					
					song1.add(s);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			//return array list object called cus
			return song1;
		}

		
		//=====================================================================================================================
		//=====================================================================================================================
		//--------------------------------------------- DELETE SONGS -----------------------------------------------


		public  boolean deleteSong(String id) {
			
			//Convert the String id value to an int
			int convId = Integer.parseInt(id);
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from songs where id = '"+convId+"'";
				int r = stmt.executeUpdate(sql);
				//ecxecuteQuery is used only in select clause.In other places use excecuteUpdate method
				
				if(r>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
		
		
		
		//---------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------------------
		//-----------------------------------------------------------------------------------------------
		//Created this method since getSubmittedFileName is not supported in Part(sometimes)
		public  String getSubmittedFileName(Part part) {
			for(String cd : part.getHeader("content-disposition").split(";")) {
				if(cd.trim().startsWith("filename")) {
					String fileName = cd.substring(cd.indexOf('=')+1).trim().replace( "\"","" );
					return fileName.substring(fileName.lastIndexOf('/')+1).substring(fileName.lastIndexOf('\\')+1);
							
				}
			}
			return null;
		}
}

