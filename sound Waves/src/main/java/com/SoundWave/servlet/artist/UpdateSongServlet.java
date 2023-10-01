package com.SoundWave.servlet.artist;

import com.SoundWave.util.*;
import com.SoundWave.model.*;
import com.SoundWave.services.artist.IDBUtil;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateSongServlet")
public class UpdateSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");//Pass the 'name' which is given in the updatesong.jsp page 
		String name = request.getParameter("name");
		String artistName = request.getParameter("artistName");
		String genre = request.getParameter("genre");
		String releasedDate = request.getParameter("releasedDate");
		String lyricist = request.getParameter("lyricist");
		String producer = request.getParameter("producer");
		String lyrics = request.getParameter("lyrics");
		String coverart = request.getParameter("coverart");
		String songtrack = request.getParameter("songtrack");
		
		//String ca = "C:/Projects/Sound Wave/src/main/webapp/images/"+coverart;
		
		// Create an object 
		IDBUtil obj = new songDBUtil();
				
		boolean isTrue;
		isTrue = obj.updatesong(id, name, artistName, genre, releasedDate, lyricist, producer, lyrics, coverart, songtrack);
		
		
		//Navigate to the success.jsp page, if the updation is success
				if(isTrue == true) {
					//The values which should display after successfully updating the song details
					List<Song> songDetails = obj.getSongDetails(id);
					request.setAttribute("songDetails", songDetails);
					
					
					//Direct to the songdetails.jsp page with updated values
					RequestDispatcher dis = request.getRequestDispatcher("songdetails.jsp");
					dis.forward(request, response);
				}
				//if not 
				else {
					System.out.println("Unsuccess");
					
					//The values which should display 
					List<Song> songDetails = obj.getSongDetails(id);
					request.setAttribute("songDetails", songDetails);
					
					//Direct to the user songdetails.jsp page with old values
					RequestDispatcher dis = request.getRequestDispatcher("songdetails.jsp");
					dis.forward(request, response);
				}
	}

}

