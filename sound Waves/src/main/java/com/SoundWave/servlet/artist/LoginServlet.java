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

import com.SoundWave.util.songDBUtil;


//import com.cus.cusDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("sname");
		
		// Create an object 
				IDBUtil obj = new songDBUtil();
				
				
		try {
			List<Song> songDetails = obj.validate(name);
			request.setAttribute("songDetails", songDetails); //Attribute name, list object are passed as parameters
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//Set the navigation page
		RequestDispatcher dis = request.getRequestDispatcher("songdetails.jsp");
		dis.forward(request, response);
	}

}
