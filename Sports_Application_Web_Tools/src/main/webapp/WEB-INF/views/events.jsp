<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
    
    <title>EVENTS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    
    
<style type="text/css">
        .container {
    margin-top: 0%;
}

/*Wizard*/
.list-group-item.success,
.list-group-item.success:hover,
.list-group-item.success:focus {
    background-color: #7aba7b;
    border-color: #7aba7b;
    color: #ffffff;
}

.list-group-item.success > h4 {
    color: #ffffff;
}

.list-group-item.error,
.list-group-item.error:hover,
.list-group-item.error:focus {
    background-color: #d59392;
    border-color: #d59392;
    color: #ffffff;
}

.list-group-item.error > h4 {
    color: #ffffff;
}


body {
		padding: 0px 0px;
		background-color: rgb(220, 220, 220);
	}
    
    .event-list {
		list-style: none;
		font-family: 'Lato', sans-serif;
		margin: 0px;
		padding: 0px;
	}
	.event-list > li {
		background-color: rgb(255, 255, 255);
		box-shadow: 0px 0px 5px rgb(51, 51, 51);
		box-shadow: 0px 0px 5px rgba(51, 51, 51, 0.7);
		padding: 0px;
		margin: 0px 0px 20px;
	}
	.event-list > li > time {
		display: inline-block;
		width: 100%;
		color: rgb(255, 255, 255);
		background-color: rgb(197, 44, 102);
		padding: 5px;
		text-align: center;
		text-transform: uppercase;
	}
	.event-list > li:nth-child(even) > time {
		background-color: rgb(165, 82, 167);
	}
	.event-list > li > time > span {
		display: none;
	}
	.event-list > li > time > .day {
		display: block;
		font-size: 56pt;
		font-weight: 100;
		line-height: 1;
	}
	.event-list > li time > .month {
		display: block;
		font-size: 24pt;
		font-weight: 900;
		line-height: 1;
	}
	.event-list > li > img {
		width: 100%;
	}
	.event-list > li > .info {
		padding-top: 5px;
		text-align: center;
	}
	.event-list > li > .info > .title {
		font-size: 17pt;
		font-weight: 700;
		margin: 0px;
	}
	.event-list > li > .info > .desc {
		font-size: 13pt;
		font-weight: 300;
		margin: 0px;
	}
	.event-list > li > .info > ul,
	.event-list > li > .social > ul {
		display: table;
		list-style: none;
		margin: 10px 0px 0px;
		padding: 0px;
		width: 100%;
		text-align: center;
	}
	.event-list > li > .social > ul {
		margin: 0px;
	}
	.event-list > li > .info > ul > li,
	.event-list > li > .social > ul > li {
		display: table-cell;
		cursor: pointer;
		color: rgb(30, 30, 30);
		font-size: 11pt;
		font-weight: 300;
        padding: 3px 0px;
	}
    .event-list > li > .info > ul > li > a {
		display: block;
		width: 100%;
		color: rgb(30, 30, 30);
		text-decoration: none;
	} 
    .event-list > li > .social > ul > li {    
        padding: 0px;
    }
    .event-list > li > .social > ul > li > a {
        padding: 3px 0px;
	} 
	.event-list > li > .info > ul > li:hover,
	.event-list > li > .social > ul > li:hover {
		color: rgb(30, 30, 30);
		background-color: rgb(200, 200, 200);
	}
	.facebook a,
	.twitter a,
	.google-plus a {
		display: block;
		width: 100%;
		color: rgb(75, 110, 168) !important;
	}
	.twitter a {
		color: rgb(79, 213, 248) !important;
	}
	.google-plus a {
		color: rgb(221, 75, 57) !important;
	}
	.facebook:hover a {
		color: rgb(255, 255, 255) !important;
		background-color: rgb(75, 110, 168) !important;
	}
	.twitter:hover a {
		color: rgb(255, 255, 255) !important;
		background-color: rgb(79, 213, 248) !important;
	}
	.google-plus:hover a {
		color: rgb(255, 255, 255) !important;
		background-color: rgb(221, 75, 57) !important;
	}

	@media (min-width: 768px) {
		.event-list > li {
			position: relative;
			display: block;
			width: 100%;
			height: 120px;
			padding: 0px;
		}
		.event-list > li > time,
		.event-list > li > img  {
			display: inline-block;
		}
		.event-list > li > time,
		.event-list > li > img {
			width: 120px;
			float: left;
		}
		.event-list > li > .info {
			background-color: rgb(245, 245, 245);
			overflow: hidden;
			
		}
		.event-list > li > time,
		.event-list > li > img {
			width: 120px;
			height: 120px;
			padding: 0px;
			margin: 0px;
		}
		.event-list > li > .info {
			position: relative;
			height: 125px;
			text-align: left;
			padding-right: 40px;
		}	
		.event-list > li > .info > .title, 
		.event-list > li > .info > .desc {
			padding: 0px 10px;
		}
		.event-list > li > .info > ul {
			position: absolute;
			left: 0px;
			bottom: 0px;
		}
		.event-list > li > .social {
			position: absolute;
			top: 0px;
			right: 0px;
			display: block;
			width: 40px;
		}
        .event-list > li > .social > ul {
            border-left: 1px solid rgb(230, 230, 230);
        }
		.event-list > li > .social > ul > li {			
			display: block;
            padding: 0px;
		}
		.event-list > li > .social > ul > li > a {
			display: block;
			width: 40px;
			padding: 10px 0px 9px;
		}

#home1{

background-color:#4d6b69

}


    </style>
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>



	

<link rel="stylesheet"	href="homestyle1.css">
	

</head>
<body id="home1">



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
    
    
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="list-group wizard-menu">
							<a href="#" class="list-group-item active step-1-menu" data-for=".step-1">
								<h4 class="list-group-item-heading">16th Annual Charles River Clean Up</h4>
								<p class="list-group-item-text">Save Mother Earth</p>
							</a>
							<br>
							
							<a href="#" class="list-group-item step-2-menu" data-for=".step-2">
								<h4 class="list-group-item-heading">Boston Yoga and Pilates Series</h4>
								<p class="list-group-item-text">Find Your Inner Peace</p>
							</a>
							<br>
							<a href="#" class="list-group-item step-3-menu" data-for=".step-3">
								<h4 class="list-group-item-heading">Boston Marathon 2015</h4>
								<p class="list-group-item-text">Run for Charity</p>
							</a>
						</div>
					</div>

        
						<div class="col-md-8">
							<!--                Load content in-->
								<div class="well wizard-content">

								</div>
							<!--                Content to load-->
									<div class="hide">


										<div class="step-1">
											<div class="row">
												<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
													<ul class="event-list">
														<li>
															<time datetime="2015-04-25">
																<span class="day">25</span>
																<span class="month">Apr</span>
																<span class="year">2015</span>
																<span class="time">ALL DAY</span>
															</time>
																<img alt="Charles" src="resources/images/charles.jpg" />
														
																<div class="info">
																	<h2 class="title">Charles River CleanUp</h2>
																	<p class="desc">16th Annual Charles River Cleaning Day</p>
																</div>
												
																<div class="social">
																	<ul>
								
																	<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
																	<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
																	<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
																	</ul>
																</div>
														</li>

														<li>
						
															<div class="info">
																	<h2 class="title">Help to Clean Charles on Earth Day</h2>
																	<h3><p class="desc">Save Nature, for a Beautiful Future</p></h3>
																	<h4><a href="http://www.crwa.org/charles-river-cleanup/event-registration">Register for Event</a></h4>
																	
							
															</div>
										
															<div class="social">
																	<ul>
																		<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
																		<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
																		<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
																	</ul>
															</div>
														</li>

													</ul>
												</div>
											</div>
										</div>


                <div class="step-2">
			
			  <div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
					<li>
						<time datetime="2015-05-03">
							<span class="day">03</span>
							<span class="month">May</span>
							<span class="year">2015</span>
							<span class="time">ALL DAY</span>
						</time>
						<img alt="Independence Day" src="resources/images/yoga.jpg" />
						<div class="info">
							<h2 class="title">Boston Yoga and Pilates Series</h2>
							<p class="desc">Stay Fit, Stay Healthy</p>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

					<li>
						
						<div class="info">
							<h2 class="title">Boston Yoga Place</h2>
							<h3><p class="desc">Find Your Inner Peace By Doing Yoga</p></h3>
							<h4><a href="http://blog.citysports.com/events/boston-yoga-and-pilates-series/">About the Event</a></h4>
							
							
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>

		

                    
                
                <div class="step-3">

			  <div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
					<li>
						<time datetime="2015-04-20">
							<span class="day">20</span>
							<span class="month">Apr</span>
							<span class="year">2015</span>
							<span class="time">ALL DAY</span>
						</time>
						<img alt="Boston Marathon" src="resources/images/bostonmarathon.jpg" />
						<div class="info">
							<h4 class="title">2015 Boston Marathon Events</h4>
							<p class="desc">Work Hard and Succeed</p>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

					<li>
						
						<div class="info">
							<h2 class="title">2015 Boston Marathon</h2>
							<h4><a href="http://www.baa.org/">Register for Event</a></h4>
							<h5><p class="desc">Good things come slow - especially in distance running.</p></h5>
							
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>

	



		</div>
            </div>
        </div>
    </div>









<script type="text/javascript">


$(document).ready(function() {
    loadDataOnReady();
    loadDataOnClick();
    
});

function loadDataOnReady()
{
    var wizardContent = $('.wizard-content');
    //Get "data-for" attribute and find element
    var dataFor = $('.wizard-menu .list-group-item.active').attr('data-for');
    var elementFor = $(dataFor);

    var dataLoad = elementFor.attr('data-load');

//        Check if attribute does exist
//        If true then load ajax, else load from div
    if (typeof dataLoad !== 'undefined' && dataLoad !== false)
    {
        //Load content ajax
        wizardContent.load(dataLoad);
    }
    else
    {
        wizardContent.html(elementFor.html());
    }
}

function loadDataOnClick()
{
    var wizardButtons = $('.wizard-menu .list-group-item');
    var wizardContent = $('.wizard-content');

    wizardButtons.on('click', function(event) {
        event.preventDefault();
        //Change active state
        wizardButtons.removeClass('active');
        $(this).addClass('active');


        //Get "data-for" attribute and find element
        var dataFor = $(this).attr('data-for');
        var elementFor = $(dataFor);

        var dataLoad = elementFor.attr('data-load');

//        Check if attribute does exist
//        If true then load ajax, else load from div
        if (typeof dataLoad !== 'undefined' && dataLoad !== false)
        {
            //Load content ajax
            wizardContent.load(dataLoad);
        }
        else
        {
            wizardContent.html(elementFor.html());
        }
    });
}
</script>
   
</div>

</body>
</html>