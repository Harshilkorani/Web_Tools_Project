<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    
   
    <title>Sign Up form</title>
   
    
  
    
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"	href="resources/css/registerSupplier.css">
	<script src="resources/js/supplierLogin.js"></script>

<style>

#rs{

background-color:#4c67a1

}


</style>    

</head>
<body class="home" id="rs">

<div class="container-fluid">
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
          <a class="navbar-brand" href="">BOSTON SPORTSZONE</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-3">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">Home</a></li>
            <li><a href="CustomerLogin.htm">Customer Login</a></li>
            <li><a href="SupplierLogin.htm">Supplier Login</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">Products</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">Contact</a></li>
            <li>
           </ul>        
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->


<!-- Sign up form -->
            <div class="panel panel-info" id="har">
                <div class="panel-heading">
                    <div class="panel-title">Supplier Sign Up</div>  
                </div>  
                    
                    <div class="panel-body" >        
                          <section class="login-form">
                          
               			<form id="signupform" class="form-horizontal" method="POST" role="form"  action="supplierProfile.htm">
                                    
                   		<div class="form-group">
                       		<label for="emailAddress" class="col-md-3 control-label">Email</label>
                       		<div class="col-md-4">
                       		<input type="text" class="form-control" name="email_id" placeholder="Email Address" />
                       		</div>
                   		</div>
                                    
                 		<div class="form-group">
                   			<label for="firstName" class="col-md-3 control-label">First Name</label>
                   			<div class="col-md-4">
                   			<input type="text" class="form-control" name="firstName" placeholder="First Name" />
                   			</div>
                 		</div>
                 
                 		<div class="form-group">
                    		<label for="lastName" class="col-md-3 control-label">Last Name</label>
                    		<div class="col-md-4">
                    		<input type="text" class="form-control" name="lastName" placeholder="Last Name" />
                    		</div>
                 		</div>
                 
                 		<div class="form-group">
                     		<label for="username" class="col-md-3 control-label">Username</label>
                     		<div class="col-md-4">
                     		<input type="text" class="form-control" name="username" placeholder="Username" />
                     		</div>
                 		</div>
                 		
                 		<div class="form-group">
                     		<label for="password" class="col-md-3 control-label">Password</label>
                     		<div class="col-md-4">
                     		<input type="password" class="form-control" name="password" placeholder="Password" />
                     		</div>
                 		</div>              

						<div class="pwstrength_viewport_progress">
                 		<div class="form-group">
                 			<!-- Button -->                                        
                     		<div class="col-md-offset-3 col-md-9">
                     		<input type="submit" value="SignUp" class="btn btn-info" />
                     		</div>
                 		</div>    
                 		 </div>              
               			
               			</form>
                        </section>
                        
                    </div>
            </div>
                            
     </div>  <!-- container -->


</body>
</html>