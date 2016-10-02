<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    
   
    <title>Credit Card Payment</title>
   
    
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<!-- <link rel="stylesheet"	href="resources/css/registerSupplier.css"> -->
	<link rel="stylesheet"	href="resources/css/creditCardPayment.css">
	<script src="resources/js/supplierLogin.js"></script>
	<script src="resources/js/creditCardPayment.js"></script>
    

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
            <!-- <li><a href="CustomerLogin.htm">Customer Login</a></li> -->
           <!--  <li><a href="SupplierLogin.htm">Supplier Login</a></li>  -->
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
                    <div class="panel-title">Hurray !!! You are just one step away Dear, <%= request.getSession().getAttribute("userName") %>.    ONE LIFE, ONE BODY & ONLY ONE CHANCE !!! REST A WHILE, RUN A MILE </div>  
                </div>  
                    
                    <div class="panel-body" >        
                         
                         
                         
                         
                         
                         
                                   
                         <div class="container" id="har">
    <div class="row" >
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                
                    <h3 class="panel-title"><img class="pull-right" src="http://i76.imgup.net/accepted_c22e0.png">Payment Details</h3>
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form" action="Success">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" name="cardNumber" placeholder="Valid Card Number" required autofocus data-stripe="number" />
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="expMonth">EXPIRATION DATE</label>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input type="text" class="form-control" name="expMonth" placeholder="MM" required data-stripe="exp_month" />
                                    </div>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input type="text" class="form-control" name="expYear" placeholder="YY" required data-stripe="exp_year" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cvCode">CV CODE</label>
                                    <input type="password" class="form-control" name="cvCode" placeholder="CV" required data-stripe="cvc" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">CARD HOLDERS NAME</label>
                                    <input type="text" class="form-control" name="couponCode" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">MAKE PAYMENT</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
                         
                         
                         
                         
                         
                         
                         
                         
                    </div>
            </div>


                   
                            
     </div>  <!-- container -->
     
        <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>


</body>
</html>