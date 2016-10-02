<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    
   
    <title>Payment Page</title>
   
    
  
    
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"	href="resources/css/registerSupplier.css">
	<script src="resources/js/supplierLogin.js"></script>
    

</head>
<body class="home" onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">

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
            <!--  <li><a href="CustomerLogin.htm">Customer Login</a></li>-->
            <!-- <li><a href="SupplierLogin.htm">Supplier Login</a></li> -->
            <li><a href="Events.htm">Events</a></li>
            <li><a href="News.htm">News</a></li>
            <li><a href="Logout.htm">Logout</a></li>
            <li>
           </ul>        
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->


<!-- Sign up form -->
            <div class="panel panel-info" id="har">
                <div class="panel-heading">
                    <div class="panel-title">Payment Page !!! Welcome, <%= request.getSession().getAttribute("userName") %></div>  
                </div>  
                    
                    <div class="panel-body" >        
                          <section class="login-form">
                          
               			<form id="signupform" class="form-horizontal" method="POST" role="form"  action="CreditCardPayment.htm">
                                    
                   		<div class="form-group">
                       		<label for="emailAddress" class="col-md-3 control-label">Billing Street Address</label>
                       		<div class="col-md-4">
                       		<input type="text" class="form-control" name="email_id" placeholder="Street Address" required />
                       		</div>
                   		</div>
                                    
                 		<div class="form-group">
                   			<label for="firstName" class="col-md-3 control-label">Apartment Number</label>
                   			<div class="col-md-4">
                   			<input type="text" class="form-control" name="firstName" placeholder="# Apartment" required/>
                   			</div>
                 		</div>
                 
                 		<div class="form-group">
                    		<label for="lastName" class="col-md-3 control-label">City</label>
                    		<div class="col-md-4">
                    		<input type="text" class="form-control" name="lastName" placeholder="City" required/>
                    		</div>
                 		</div>
                 
                 		<div class="form-group">
                     		<label for="username" class="col-md-3 control-label">Zip Code</label>
                     		<div class="col-md-4">
                     		<input type="number" class="form-control" name="username" placeholder="Zip Code" required/>
                     		</div>
                 		</div>
                 		             

                 		<div class="form-group">
                 			<!-- Button -->                                        
                     		<div class="col-md-offset-3 col-md-9">
                     		<input type="submit" value="Proceed to Payment" class="btn btn-info" />
                     		</div>
                 		</div>                  
               			
               			</form>
                        </section>
                        
                    </div>
            </div>
                            
     </div>  <!-- container -->
     
     <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
     
     
     


</body>
</html>