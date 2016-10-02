<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Profile</title>

	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"	href="resources/css/supplierLogin.css">
	<script src="resources/js/supplierLogin.js"></script>


</head>
<body>

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
            <li><a href="SupplierLogin.htm">Supplier Login</a></li>
            <li><a href="Events.htm">Events</a></li>
            <li><a href="News.htm">News</a></li>
            
            <li><h5><b>Welcome <%= request.getSession().getAttribute("userName") %></b></h5></li>
            <li>
           </ul>        
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

	<!-- Header -->
	
	<div class="panel panel-info" id="har">
                <div class="panel-heading">
                    <div class="panel-title">Add Products</div>  
                </div>  
                    
                    <div class="panel-body" >        
                         <section class="login-form">
                          
               			<form:form method="POST" enctype="multipart/form-data" commandName="Product" id="signupform" class="form-horizontal"  role="form"  action="ProductSuccess">
               			<div class="form-group">
                       		<label for="product_image" class="col-md-3 control-label">Product Image</label>
                       		<div class="col-md-4">
                       		<input type="file" name="uploadFile" />
                       		</div>
                   		</div>
               			
               			                                    
                   		<div class="form-group">
                       		<label for="product_name" class="col-md-3 control-label">Product Name</label>
                       		<div class="col-md-4">
                       		<form:input type="text" class="form-control" path="product_name" placeholder="Product Name" />
                       		</div>
                   		</div>
                                    
                 		<div class="form-group">
                   			<label for="description" class="col-md-3 control-label">Description</label>
                   			<div class="col-md-4">
                   			<form:input type="textarea" class="form-control" path="description" placeholder="Description" />
                   			</div>
                 		</div>
                 
                 		<div class="form-group">
                    		<label for="product_price" class="col-md-3 control-label">Product Price</label>
                    		<div class="col-md-4">
                    		<form:input type="text" class="form-control" path="product_price" placeholder="Product Price" />
                    		</div>
                 		</div>
                 
                 		<div class="form-group">
                     		<label for="category_type" class="col-md-3 control-label">Category Type</label>
                     		<div class="col-md-4">       	
             				<form:select path="Category.category_type" id = "category_type">
               				<form:option value = "Cricket">Cricket</form:option>
               				<form:option value = "Tennis">Tennis</form:option>
               				<form:option value = "Soccer">Soccer</form:option>
               				<form:option value = "Basketball">Basketball</form:option>
     				        <form:option value = "Baseball">Baseball</form:option>
     				        <form:option value = "Volleyball">Volleyball</form:option>
							</form:select>
          					</div>
                 		</div>             

                 		<div class="form-group">
                 			<!-- Button -->                                        
                     		<div class="col-md-offset-3 col-md-9">
                     		<input type="submit" value="AddProduct" class="btn btn-info" />
                     		</div>
                 		</div>                  
               			
               			</form:form>
                        </section>
                        
                    </div>
            </div>
	
</div>

<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>



</body>
</html>