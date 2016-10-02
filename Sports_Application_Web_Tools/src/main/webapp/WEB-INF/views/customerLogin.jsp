<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Customer Login</title>
	
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"	href="resources/css/supplierLogin.css">
	<!--  <script src="resources/js/supplierLogin.js"></script> -->

</head>

<body class="home" >

<div class="container-fluid">
	<!-- Second navbar for search -->
    <nav class="navbar navbar-inverse">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-3">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">BOSTON SPORTSZONE</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-3">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">Home</a></li>
            <li><a href="CustomerLogin.htm">Customer Login</a></li>
            <li><a href="SupplierLogin.htm">Supplier Login</a></li>
            <li><a href="Events.htm">Events</a></li>
            <li><a href="News.htm">News</a></li>
            <li>
           </ul>        
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

	<!-- Header -->
	
		
		<div class="container">
  
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">
        <form method="POST" action="customerProfile1.htm" role="login">
          <img src="resources/images/sports_company1.jpg" class="img-responsive" alt="sports_company" />
          <input type="email" name="email_id" placeholder="Email" required class="form-control input-lg" placeholder="Enter Email" />
          
          <input type="password" name="password" class="form-control input-lg" id="password" placeholder="Password" required/>          
          
          <div class="pwstrength_viewport_progress"></div>     
          <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
          <div>
            <a href="RegisterCustomer.htm">Create account</a>
          </div>
          
        </form>
          </section>
  </div>
  
    

</div>
	
	
	</div><!--  container-fluid -->
	
	</div>
	
	
	

</body>
</html>