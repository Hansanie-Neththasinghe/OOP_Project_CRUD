<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


	<link rel="stylesheet" href="navigationStyles.css">
	<link rel="stylesheet" href="styles.css">
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>Search Songs</title>
</head>
<body>

	<div class="navigation">
	<ul>
	<li><a href="songinsert.jsp">Insert Song Details</a></li>
	<li><a href="songdetails.jsp">Song Details</a></li>
	<li><a href="Login.jsp">Search Song Details</a></li>
	<li><a href="#">User Account</a></li>
	</ul>
	<br><br>
	
	<!--
	<form action="log" method="post">
 	 	Song name <input type="text" name="sname"><br>
 		
 	 	<input type="submit" name="submit" value="Show Song Details">
 	
 	</form>
 	-->

	<div class="container">
		<div class="row">
			<div class="col-6 offset-3">
				<form action="log" method="post">
  					<div class="form-group">
    					<label for="exampleInputEmail1">Song Name</label>
    					<input type="text" class="form-control" name="sname" aria-describedby="emailHelp">
  					
 					 <br>
  
  					<button type="submit" class="btn btn-primary">Show Song Details</button>
				</form>
			</div>
		</div>
	</div>
	
 	<!--  
 	<div class="container">
 		<div class="row">
 			<div class="col-6 offset-3>
 	
 				<form action="log" method="post">
  					<div class="form-group">
    					<label for="exampleInputEmail1">Song Name</label>
    					<input type="text" class="form-control" name="sname" aria-describedby="emailHelp">
  					
 					 <br>
  
  					<button type="submit" class="btn btn-primary">Show Song Details</button>
				</form>
 	
 				</div>
 			</div>
 		</div>
 -->
 	
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