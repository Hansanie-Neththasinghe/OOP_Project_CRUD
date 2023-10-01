package com.SoundWave.servlet.artist;

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

import com.SoundWave.util.songDBUtil;


/**
 * Servlet implementation class DeleteCustomerServlet
 */
@WebServlet("/DeleteCustomerServlet")
public class DeleteSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		boolean isTrue;
		// Create an object 
		IDBUtil obj = new songDBUtil();
		isTrue = obj.deleteSong(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("songinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Song> songDetails = obj.getSongDetails(id);
			request.setAttribute("cusDetails_name", songDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("songdetails.jsp");
			dis.forward(request, response);
		}
	}

}
