<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Song Insert</title>
	<style> 
	.details{
		margin: 10px;
		padding:10px;
	}
		input[type=text] {
  		width: 100%;
  		padding: 12px 20px;
		}  	margin: 8px 0;
 			box-sizing: border-box;
 						
 		input[type=file] {
  		width: 100%;
  		padding: 12px 20px;
		} 
		
		
body {
background-image: url(/images/sky.jpg);
}

</style>

    <link rel="stylesheet" href="navigationStyles.css">
	<link rel="stylesheet" href="styles.css">
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	
</head>
<body>
	<div class="navigation">
	<ul>
	<li><a href="songinsert.jsp">Insert Song Details</a></li>
	<li><a href="songdetails.jsp">Song Details</a></li>
	<li><a href="Login.jsp">Search Song Details</a></li>
	<li><a href="#">User Account</a></li>
	</ul>
	
	<div class="details">
	<form action="SongInsertServlet" method="post" enctype="multipart/form-data">
	
	<h2 align:center>Insert Your New Song Details</h2>
		name<input type="text" name="name" required><br>
		artistName<input type="text" name="artistName" required><br>
		genre<br><br>
		<select name="genre" id="genre" required>
    		<option value="pop">Pop</option>
    		<option value="jazz">Jazz</option>
    		<option value="love">Love</option>
    		<option value="acoustic">Acoustic</option>
  		</select>
 	 <br><br>
		releasedDate<br><br><input type="date" name="releasedDate" required><br><br>
		lyricist<input type="text" name="lyricist" required><br>
		producer<input type="text" name="producer" required><br>
		lyrics<input type="text" name="lyrics" required><br>
		coverart<br>
		<input type="file" name="coverart" required><br>
		songtrack<br>
		<input type="file" name="songtrack" required><br>
		<br><br>
		<input type="submit" name="submit" value="Upload Song">
	
	</form>
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