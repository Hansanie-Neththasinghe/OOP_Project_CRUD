<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Song</title>


	<link rel="stylesheet" href="navigationStyles.css">
	<link rel="stylesheet" href="styles.css">
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

	<div class="navigation">
	<ul>
	<li><a href="songinsert.jsp">Insert Song Details</a></li>
	<li><a href="songdetails.jsp">Song Details</a></li>
	<li><a href="Login.jsp">Search Song Details</a></li>
	<li><a href="#">User Account</a></li>
	</ul>
	
	<!-- Catching the values sent from song details page through the url-->
	
	<%
		String id2 = request.getParameter("id");//Pass the 'name' which is given in the song details page (L101)
		String name2 = request.getParameter("name");
		String artistName2 = request.getParameter("artistName");
		String genre2 = request.getParameter("genre");
		String releasedDate2 = request.getParameter("releasedDate");
		String lyricist2 = request.getParameter("lyricist");
		String producer2 = request.getParameter("producer");
		String lyrics2 = request.getParameter("lyrics");
		String coverart2 = request.getParameter("coverart");
		String songtrack2 = request.getParameter("songtrack");
	%>
	
	
	<!-- Showing data which are already there in the database (When updating, old data should be shown to the artist) -->
	<form action="update" method="post">
		<table class="table">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="<%= id2 %>" readonly><br><!-- Primary key cannot be updated --></td>
		</tr>
		
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Artist Name</td>
			<td><input type="text" name="artistName" value="<%= artistName2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Genre</td>
			<td><input type="text" name="genre" value="<%= genre2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Released date</td>
			<td><input type="text" name="releasedDate" value="<%= releasedDate2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Lyricist</td>
			<td> <input type="text" name="lyricist" value="<%= lyricist2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Producer</td>
			<td> <input type="text" name="producer" value="<%= producer2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Lyrics</td>
			<td> <input type="text" name="lyrics" value="<%= lyrics2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Cover Art</td>
			<td><img src="<%= coverart2 %>"></td>
			<td> <input type="file" name="coverart" value="<%= coverart2 %>"><br></td>
		</tr>
		
		<tr>
			<td>Song track</td>
			<td><%= songtrack2 %></td>
			<td> <input type="file" name="songtrack" value="<%= songtrack2 %>"><br></td>
		</tr>
		</table>
		
		
		<input type="submit" name="submit" value="Update Song Details"><br>
	
	</form>
	<footer>
		<div class="footerContainer">
            <div class="socialIcons">
                <a href=""><i class="fa-brands fa-facebook"></i></a>
                <a href=""><i class="fa-brands fa-instagram"></i></a>
                <a href=""><i class="fa-brands fa-twitter"></i></a>
                <a href=""><i class="fa-brands fa-google-plus"></i></a>
                <a href=""><i class="fa-brands fa-youtube"></i></a>
            </div>
            <div class="footerNav">
                <ul>
                    <li><a href="">Home</a></li>
                    <li><a href="">News</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="">Our Team</a></li>
                </ul>
            </div>
            <div class="footerBottom">
                <p>Copyright &copy;2023; Designed by <span class="designer">Sound Wave</p>
            </div>
            
        </div>
	</footer>
	
</body>
</html>