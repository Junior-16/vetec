<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Barra de navegação -->
<nav class="navbar navbar-default">
  <div class="container-fluid navigation">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
       	<span class= "glyphicon glyphicon-home" aria-hidden="true"></span>
      </a>
      <a class="navbar-brand" href="#" id="icon-link">
       	Cadastrar
      	<span class="glyphicon glyphicon-plus"></span>       	
      </a>
      <a class="navbar-brand" href="#" id="icon-link">
       	Prontuário
       	<span class="glyphicon glyphicon-folder-open"></span>
      </a>
      <a class="navbar-brand" href="#" id="icon-link">
       	Cirurgia
       	<span class="glyphicon glyphicon-list"></span>
      </a>
	  <a class="navbar-brand" id="icon-link" href='<c:url value = "/logout"/>'>
	     Sair
	   <span class="glyphicon glyphicon-remove"></span>
	  </a>
    </div>
  </div>
</nav>