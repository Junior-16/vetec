<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Veterinaria</title>
	<link rel="stylesheet" href="<c:url value="/css/tether.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/css/index.css"/>"/>
	<link rel="shortcut icon" href="<c:url value="/imagens/favicon.ico"/>" >
	<link rel="stylesheet" href="<c:url value="/css/toastr.css"/>">
</head>
<body>
	<nav class="navbar navbar-toggleable-md navbar-light bg-faded row header">
		<div class = "col-md-6">
	  		<img id = "ifc" src="http://concordia.ifc.edu.br/wp-content/themes/ifc-v2/assets/images/logo-ifc.png">
	  	</div>
	  	<div class="col-md-3">
	  	</div>
	  	<div class="col-md-3">
	  	<form method="GET">
	  		<div class="dropdown">
		  		<a class="navbar-brand dropdown-toggle icons-link" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		  			<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
		  		</a>
		  		  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
				    <li><a href="<c:url value="/perfil"/>"><span class="glyphicon glyphicon-user"></span> Perfil</a></li>
				    <li><a href="<c:url value="/logout"/>"><span class="glyphicon glyphicon-remove"></span>  Sair</a></li>
				  </ul>
		  	</div>
		  </form>
	  	</div>
	</nav>
