<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>News</title>
	
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	
<link rel="stylesheet"	href="resources/css/homestyle.css">
<link rel="stylesheet"	href="resources/css/jquery.zrssfeed.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/jquery.zrssfeed.min.js" type="text/javascript"></script>
<script src="resources/js/jquery.jscroll.js" type="text/javascript"></script>
<script src="resources/js/jquery.vticker.js" type="text/javascript"></script>
<script src="resources/js/jquery.zrssfeed.js" type="text/javascript"></script>

<style>

#news1{

background-color:#4d6b69

}

</style>
	

</head>
<body id="news1">




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
            <!-- <li><a href="CustomerLogin.htm">Customer Login</a></li> -->
            <!-- <li><a href="SupplierLogin.htm">Supplier Login</a></li> -->
            <li><a href="Events.htm">Events</a></li>
            <li><a href="News.htm">News</a></li>
            <!-- <li><a href="Logout.htm">Logout</a></li> -->
          <!--   <li ><b id="welcome"><%= request.getSession().getAttribute("userName") %></b></li> -->
            <li>
           </ul>        
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
    
    
    
    <div id="test">
    
    
    
    
    </div>
    
    
    
    <script type="text/javascript">
$(document).ready(function () {
  $('#test').rssfeed('http://www.espnfc.com/barclays-premier-league/23/rss', {
    limit: 09
  });
});
</script>
    



<div class="jumbotron">


<div class="row-fluid">
        <div class="span8">
        	<iframe width="60%" height="125px" frameborder="0" scrolling="no"
				marginheight="0" marginwidth="0" 
				src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2949.3817229550436!2d-71.1009222!3d42.3343843!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e379890fad9993%3A0x9ec1986caed69340!2s75+St+Alphonsus+St%2C+Boston%2C+MA+02120!5e0!3m2!1sen!2sus!4v1429541635280">
				</iframe>
				
				<h3>BOSTON SPORTSZONE</h3>
    	
    		<address>
    			<strong>BOSTON SPORTSZONE</strong><br>
    			75, St. Alphonsus Street,<br>
    			Opposite Mission Main,<br>
    			Boston, MA, USA<br>
    			ZIp: 0212<br>
    			CT21 5SH<br>
    			<abbr title="Phone">P:</abbr> 01234 567 890
    		</address>
		</div>
    	
      	
</div>


 
</div>

</div>

</body>
</html>