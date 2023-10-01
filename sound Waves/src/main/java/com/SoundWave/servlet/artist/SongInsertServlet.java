package com.SoundWave.servlet.artist;

import com.SoundWave.util.*;
import com.SoundWave.model.*;
import com.SoundWave.services.artist.IDBUtil;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Collection;
import java.io.FileOutputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//import artist.songDBUtil;

@WebServlet("/SongInsertServlet")
@MultipartConfig(
		location = "C:\\Projects\\sound Waves\\src\\main\\webapp\\images",
		fileSizeThreshold = 1024 * 1024, //1MB
		maxFileSize = 1024 * 1024 * 10,  //10MB
		maxRequestSize = 1024 * 1024 * 31 //31MB
		)


public class SongInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SongInsertServlet() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String artistName = request.getParameter("artistName");
		String genre = request.getParameter("genre");
		String releasedDate = request.getParameter("releasedDate");
		String lyricist = request.getParameter("lyricist");
		String producer = request.getParameter("producer");
		String lyrics = request.getParameter("lyrics");
		
		
		
		
		
		// Create an object 
		IDBUtil obj = new songDBUtil();
				

		//======================================================
		//String message = "";
		String uploadPath = "";
		String uploadPath2 = "";
		try {
			Part part1 = request.getPart("coverart");
			uploadPath = getFileName(part1);
			part1.write(getFileName(part1));
			
			//message = "Your file has been uploaded successfully";
		} catch (Exception e) {
			//message = "Error in uploading" + e.getMessage();
		}		
		
		try {
			Part part2 = request.getPart("songtrack");
			uploadPath2 = getFileName(part2);
			part2.write(getFileName(part2));
			
			//message = "Your file has been uploaded successfully";
		} catch (Exception e) {
			//message = "Error in uploading" + e.getMessage();
		}
		//======================================================
		
		boolean isTrue;//creating a boolean variable to catch the value which is returning from songinsert method. It is returning an boolean value
		
		isTrue = obj.insertsong(name, artistName, genre, releasedDate, lyricist , producer, lyrics , uploadPath , uploadPath2);
		
		if(isTrue == true) {
			//redirecting to a jsp page
			RequestDispatcher dis = request.getRequestDispatcher("insertsuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("insertunsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}
	
	private String getFileName(Part part) {
		String contentDisposition = part.getHeader("content-disposition");
		
		if(!contentDisposition.contains("filename=")) {
			return null;
		}
		int beginIndex = contentDisposition.indexOf("filename=") + 10;
		int endIndex = contentDisposition.length() -1;
		
		return contentDisposition.substring(beginIndex,endIndex);
	}

}
