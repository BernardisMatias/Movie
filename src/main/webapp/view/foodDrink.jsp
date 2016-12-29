<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.fonts {
	font-family: 'Raleway', sans-serif;
}

.foodDiv {
	float: left;
	margin-right: 5px;
	
}
.align{
	display: inline-block;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Roboto:400,700"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Food & drink</title>
</head>
<body class="fonts">

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">eMovie</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/goToList">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle active"
					data-toggle="dropdown" href="#">Discount promotions<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">2x1 Tickets</a></li>
						<li><a href="#">Food & drink</a></li>
						<li><a href="#">XD theaters</a></li>
					</ul></li>
				<li><a href="#">Coming soon</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign
						Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>


	<div class="foodDiv align" >
		<img src="http://www.onceuponachef.com/images/2015/06/Crazy-Good-Spicy-Italian-Popcorn-575x382.jpg">
	</div>
	
	<div class="align" style="width:30%; margin-top:100px;">
			<p class="text-center"><strong>Popcorn</strong></p>
		<br>
		<p class="text-center">New christmas discounts in sweet popcorn.
			To make your entire movie experience unforgettable!</p>
	</div>



</body>
</html>