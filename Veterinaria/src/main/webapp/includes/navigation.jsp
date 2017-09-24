<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Barra de navegação -->
<nav class="navbar navbar-default">
<form method="get">
  <div class="container-fluid navigation">
    <div class="navbar-header">
      <a class="navbar-brand" href="<c:url value = "/cadastrarProprietario"/>" style="color:white;" id="proprietario">
       <span class= "glyphicon glyphicon-plus" aria-hidden="true"></span>
       	Cadastrar Proprietário
      </a>
      <a class="navbar-brand" href="#" style="color:white;">
       <span class="glyphicon glyphicon-time" aria-hidden="true"></span> 
       Agenda
      </a>
      <a class="navbar-brand" href="<c:url value="/createacount"/>" style="color:white;">
      <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 
      Cadastrar Novo Usuário
      </a>
      <a class="navbar-brand" href="<c:url value="/listUsers"/>" style="color:white;">
		<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> 
      Listar Usuários
      </a>
      <a class="navbar-brand" href="<c:url value = "/buscar"/>" style="color:white;" id="buscar">
       <span class= "glyphicon glyphicon-search" aria-hidden="true"></span>
       	Buscar
      </a>
    </div>
  </div>
 </form>
</nav>