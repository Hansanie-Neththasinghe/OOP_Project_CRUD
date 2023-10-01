<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <!-- Import this to make the connection between jsp pages and java classes. -->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Song Details</title>
	<style>
		.btns{
  			background-color: #345; /* Green */
  			border: none;
  			color: white;
  			padding: 15px 32px;
  			text-align: center;
  			text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
  			
  		.container{
  			margin-top: 50px;
  			margin-bottom: 50px;
  		}
}
	</style>
	
	<link rel="stylesheet" href="navigationStyles.css">
	<link rel="stylesheet" href="styles.css">
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

  <!--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	-->
	
</head>
<body>

	<div class="navigation">
	<ul>
	<li><a href="songinsert.jsp">Insert Song Details</a></li>
	<li><a href="songdetails.jsp">Song Details</a></li>
	<li><a href="Login.jsp">Search Song Details</a></li>
	<li><a href="#">User Account</a></li>
	</ul>
	
	<table border="1" class="table">
	 
	<c:forEach var="song" items="${songDetails}">
	
	<!-- Create variables using c tag library to store data to retrieve, when updating them -->
	<!--  Make sure to make those variables inside the foreach loop , since it takes data inside that loop, through 'items' -->
	
		<c:set var="id1" value="${song.id}"/> <!-- value for this line (23), should be same as in line no 39 -->
		<c:set var="name1" value="${song.name}"/>
		<c:set var="artistName1" value="${song.artistName}"/>
		<c:set var="genre1" value="${song.genre}"/>
		<c:set var="releasedDate1" value="${song.releasedDate}"/>
		<c:set var="lyricist1" value="${song.lyricist}"/>
		<c:set var="producer1" value="${song.producer}"/>
		<c:set var="lyrics1" value="${song.lyrics}"/>
		<c:set var="coverart1" value="${song.coverart}"/>
		<c:set var="songtrack1" value="${song.songtrack}"/>
	
	<!--  
	<div class="container">
	<div class="row">
	<div class="col-12">
	<div class="table table-dark">
	 -->	
		
		<tbody>
		
			<tr>
			<td>ID</td>
			<td>${song.id}</td>
			</tr>
			
			<tr>
			<td>Name</td>
			<td>${song.name}</td>
			</tr>
			
			<tr>
			<td>Artist Name</td>
			<td>${song.artistName}</td>
			</tr>
			
			<tr>
			<td>Genre</td>
			<td>${song.genre}</td>
			</tr>
			
			<tr>
			<td>Released date</td>
			<td>${song.releasedDate}</td>
			</tr>
			
			<tr>
			<td>Lyricist</td>
			<td>${song.lyricist}</td>
			</tr>
			
			<tr>
			<td>Producer</td>
			<td>${song.producer}</td>
			</tr>
			
			<tr>
			<td>Lyrics</td>
			<td>${song.lyrics}</td>
			</tr>
			
			<tr>
			<td>Cover art</td>
			
			<td><img src="${song.coverart}"></td>
			<!-- <td><img src="${song.coverart}"></td> -->
			</tr>
			
			<tr>
			<td>Song track</td>
			<td>${song.songtrack}</td>
			</tr>
		
		</tbody>
	<!--  	
	</div>
	</div>
	</div>
	</div>	
	 
	-->
	</c:forEach>
	
	
	</table>

	<!-- when clicks on update details button, navigate to the updatesong.jsp page -->
	<c:url value="updatesong.jsp" var="songupdate">
	
		<!-- Pass these values to the updatesong.jsp page through url -->
		<c:param name="id" value="${id1}"></c:param> <!-- here, value should be same as the 'variable names' we set above (line 23) in this page -->
		<c:param name="name" value="${name1}"></c:param>
		<c:param name="artistName" value="${artistName1}"></c:param>
		<c:param name="genre" value="${genre1}"></c:param>
		<c:param name="releasedDate" value="${releasedDate1}"></c:param>
		<c:param name="lyricist" value="${lyricist1}"></c:param>
		<c:param name="producer" value="${producer1}"></c:param>
		<c:param name="lyrics" value="${lyrics1}"></c:param>
		<c:param name="coverart" value="${coverart1}"></c:param>
		<c:param name="songtrack" value="${songtrack1}"></c:param>
		
	
	</c:url>
	
	
	<!-- Create an update Button and when clicks that, direct to the update song page-->
	<a href="${songupdate}"> <!-- pass the 'variable name' (var) given in the C tag library, as the href, here -->
	<input type="button" class="btns" name="update" value="Update Details"/>
	</a>
	
	
	
	<!-- when clicks on update details button, navigate to the deletesong.jsp page -->
	<c:url value="deletesong.jsp" var="songdelete">
	
		<!-- Pass these values to the deletesong.jsp page through url -->
		<c:param name="id" value="${id1}"/>
		<c:param name="name" value="${name1}"/>
		<c:param name="artistName" value="${artistName1}"/>
		<c:param name="genre" value="${genre1}"></c:param>
		<c:param name="releasedDate" value="${releasedDate1}"></c:param>
		<c:param name="lyricist" value="${lyricist1}"></c:param>
		<c:param name="producer" value="${producer1}"></c:param>
		<c:param name="lyrics" value="${lyrics1}"></c:param>
		<c:param name="coverart" value="${coverart1}"></c:param>
		<c:param name="songtrack" value="${songtrack1}"></c:param>
		
	
	</c:url>
	
	
	<!-- Create a delete Button and when clicks that, direct to the delete song page-->
	<a href="${songdelete}"><!-- pass the 'variable name' (var) given in the C tag library, as the href, here -->
	<input type="button" class="btns" name="delete" value="Delete Song"/>
	</a>
	</div>
	
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