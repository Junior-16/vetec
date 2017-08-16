<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Barra de navegação -->
<nav class="navbar navbar-default">
<form method="get">
  <div class="container-fluid navigation">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
       	<span class= "glyphicon glyphicon-home" aria-hidden="true"></span>
      </a>
      <a class="navbar-brand"></a>
      <a class="navbar-brand" href="<c:url value = "/cadastrarProprietario"/>" style="color:white;" id="proprietario">
       	Cadastrar Proprietario
      	<span class= "glyphicon glyphicon-plus" aria-hidden="true"></span>
      </a>
       <a class="navbar-brand"></a>
      <a class="navbar-brand" href="<c:url value = "/prontuario"/>" style="color:white;" id="prontuario">
      	Prontuário 
      	<span class= "glyphicon glyphicon-folder-open" aria-hidden="true"></span>
      </a>
       <a class="navbar-brand"></a>
      <a class="navbar-brand" href="<c:url value = "/ficha_internacao"/>" style="color:white;">
       	Cirurgia
      <span class= "glyphicon glyphicon-th-list" aria-hidden="true"></span>
      </a>
      <a class="navbar-brand"></a>
      <a class="navbar-brand" href="#" style="color:white;">
      Agenda
      <span class="glyphicon glyphicon-time" aria-hidden="true"></span> 
      </a>
      <a class="navbar-brand"></a>
      <a class="navbar-brand" href="<c:url value = "/buscar"/>" style="color:white;" id="buscar">
       	Buscar
      <span class= "glyphicon glyphicon-search" aria-hidden="true"></span>
      </a>
    </div>
  </div>
 </form>
</nav>