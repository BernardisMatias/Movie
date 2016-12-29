<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	color: #333333;
	font-family: ‘Trebuchet MS’, Helvetica, sans-serif;
}
.custombg{
background-color:#000000;
background-image:url(http://www.clipartkid.com/images/182/movie-film-clipart-best-TrEZQa-clipart.jpeg);
} 
.margin{
	margin-left:20px;
} 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Roboto:400,700" rel="stylesheet" type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>Welcome</title>
</head>
<body class="custombg">
<br>
<br>
	<h1 class="margin">Welcome!</h1>
	<br>
	<br>
	<h2>
		<a class="margin" href="<%=request.getContextPath()%>/goToList">Enter</a>
	</h2>
</body>
</html>