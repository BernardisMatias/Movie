<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
#todo {
	margin-left: 70px;
}
table {
	margin-right:20px;
	margin-left: 20px;
	border-collapse: separate;
  	border-spacing:  7px;
}
#movies{
	width:830px;
}
input:focus {
    background-color: #F2F2F2;
}
.fonts{
	font-family: 'Raleway', sans-serif;
}
#newRuntime{
	width: 50px;
}
#myCarousel {
	display: inline-block;
	width: 100px;
}
#tick{
	color:green;
	display: inline-block;
}
#spanTittle{
	display:initial;
}
.escondido{
	display:none;
}
</style>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Roboto:400,700" rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

<!-- Mapeo al archivo main.js Javascript. El que hace que todo suceda. -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/main.js"></script>
	
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/function.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/functionTwo.js"></script>

<link rel="stylesheet"
	src="<%=request.getContextPath()%>/resources/choosen.css">
<link rel="stylesheet"
	src="<%=request.getContextPath()%>/resources/ImageSelect.css">

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/jquery.mustache.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/chosen.jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/ImageSelect.jquery.js"></script>

<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Movies list</title>
</head>
<body class="fonts">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">eMovie</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/goToList">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Discount promotions<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">2x1 Tickets</a></li>
            <li><a href="<%=request.getContextPath()%>/foodDrink">Food & drink</a></li>
            <li><a href="#">XD theaters</a></li>
          </ul>
        </li>
        <li><a href="#">Coming soon</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  <br>
   <!------------------  COMIENZO DEL BODY FUERA DE LA BARRA DE NAVEGACION  ------------------------->
  <div id="todo">
	<h1 class="display-1">Featured movies</h1>
	
	<br>
	<table id="movies" class="tableMovie table table-striped">
		<thead>
			<tr>
				<th></th> <!-- Espacio Vacio para la imagen -->
				<th>Tittle</th>
				<th>Director</th>
				<th>Runtime (min)</th>
				<th>Delete</th>
				<th>Edit</th>
				<th class="escondido" style="widtth:50px">Options</th>
			</tr>
		</thead>
	</table>
	<br>
	<br>
	<button id="buttonNewMovie" class="btn btn-success add" aria-label="Left Align">add new movie</button>
	<br>
	<br>
	<div id="addMovie" class="addNewMovie">
		<div><u>Double click on any image to select it:</u></div>
		<br>
		<div id="myCarousel" class="carousel slide" clear="all" data-ride="carousel" display="none">

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" role="listbox">

				<div id="theIncredibles"
					class="item active">

					<img
						src="http://cdn.movieweb.com/img.news.tops/NE90frgQatopbi_1_zzb.jpg"
						alt="The incredibles">
				</div>

				<div id="monstersinc" class="item">
					<img
						src="http://es.web.img3.acsta.net/c_100_100/newsv7/15/06/16/10/26/0804080.jpg"
						alt="Monster Inc.">
				</div>

				<div id="taken" class="item">
					<img
						src="https://i1.sndcdn.com/artworks-000140554645-62d2y4-large.jpg"
						alt="Taken">
				</div>

				<div id="findingNemo" class="item">
					<img
						src="http://i2.esmas.com/editorial-televisa/2016/01/01/830634/dory-100x100.jpg"
						alt="Finding Nemo">
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"><span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
				</div>
		</div>
		<a id="tick" class="glyphicon glyphicon-ok" color="green"><font face="verdana"> Successfully selected</font></a>
		<br>
		<p><u>Please, complete the following fields:</u></p>
		Tittle:<br><input id="newTittle" type="text" clear="all"></br>
		Director:<br><input id="newDirector" type="text" clear="all"></br>
		Runtime(min):<br><input id="newRuntime" type="text" clear="all">
		<br>
		<br>
		<button type="submit" id="saveMovie" class="btn btn-default add" aria-label="Left Align" onclick="hideForm()">Save</button>
		<br>
		<br>
	</div>
</div>	<!-- Fin del body. id="todo" -->

</body>
</html>