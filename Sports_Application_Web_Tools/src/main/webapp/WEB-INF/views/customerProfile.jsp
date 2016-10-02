<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>

<style>

.btn-product{
	width: 100%;
}

#cp{

background-color:#add8e6

}

</style>
	
	
  <title>Customer Profile Page</title>
  
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">	
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  

	<link rel="stylesheet"	href="resources/css/customerProfile.css">
		
</head>

<body class="home" id="cp" class="home" onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">





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
            <!-- <li><a href="SupplierLogin.htm">Supplier Login</a></li> -->
            <li><a href="Events.htm">Events</a></li>
            <li><a href="News.htm">News</a></li>
            <li><a href="Logout.htm">Logout</a></li>
            <li ><b id="welcome"><%= request.getSession().getAttribute("userName") %></b></li>
            <li>
           </ul>        
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
    
<div id="wrapper">
    
       <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <nav id="spy">
                <ul class="sidebar-nav nav">
                    <li class="sidebar-brand">
                    	
                        <span class="fa fa-home solo">PRODUCT CATEGORIES</span>
                        
                    </li>
                    <li>
                        <a href="Cricket.htm" data-scroll>
                            <span class="fa fa-anchor solo">CRICKET</span>
                        </a>
                    </li>
                    <li>
                        <a href="Tennis.htm" data-scroll>
                            <span class="fa fa-anchor solo">TENNIS</span>
                        </a>
                    </li>
                    <li>
                        <a href="BasketBall.htm" data-scroll>
                            <span class="fa fa-anchor solo">BASKETBALL</span>
                        </a>
                    </li>
                    <li>
                        <a href="Baseball.htm" data-scroll>
                            <span class="fa fa-anchor solo">BASEBALL</span>
                        </a>
                    </li>
                     <li>
                        <a href="Soccer.htm" data-scroll>
                            <span class="fa fa-anchor solo">SOCCER</span>
                        </a>
                    </li>
                     <li>
                        <a href="Volleyball.htm" data-scroll>
                            <span class="fa fa-anchor solo">VOLLEYBALL</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1 id="home">
                    <a id="menu-toggle" href="#" class="glyphicon glyphicon-align-justify btn-menu toggle">
                        <i class="fa fa-bars"></i>
                    </a>
                   
                </h1>
            </div>
			
		</div>
    
    
	<div class="container">
	<div class="row" id="imageHa">
	<c:forEach var="Product" items="${productList}">
	
    
    	
    	<div class="col-md-4" style="float: left;margin:0px;">
		<!-- 	<div class="col-sm-8 col-md-4"> -->
				<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">Product ID: ${Product.product_id}</span></h4>
					<img src="<c:out value='${Product.product_image}'/>"  class="img-responsive" width="400px" height="400px">
					<div class="caption">
						
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3><c:out value="${Product.product_name}"/></h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label><c:out value="Price: ${Product.product_price}$" /></label></h3>
							</div>
						</div>
						<p><c:out value="Info: ${Product.description} " /></p>
						<div class="row">
							
							<div class="col-md-6">
								<a href="Payment.htm?product_id" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
						</div>				
						
					</div>
				</div>
		<!-- 	</div> -->

            
        </div> 
       
        
        
		</c:forEach>
	 </div>
</div>
	
	

	
	
</div>

	<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>


<script>

	/*Menu-toggle*/
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });

    /*Scroll Spy*/
    $('body').scrollspy({ target: '#spy', offset:80});

    /*Smooth link animation*/
    $('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top
                }, 1000);
                return false;
            }
        }
    });
    
    


</script>




</body>
</html>