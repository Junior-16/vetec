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
      <ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"aria-expanded="false">
			<span style="color: #FFFFFF;"><spa class="glyphicon glyphicon-user"></span> 
			<c:if test="${not empty loggedUser }">
				<span id="userLogged">${loggedUser}</span>
			</c:if> 
			<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/perfil"/>"><span class="glyphicon glyphicon-user"></span> Perfil</a></li>
					<li><a href="<c:url value="/logout"/>"><span class="glyphicon glyphicon-remove"></span> Sair</a></li>
				</ul>
			</li>
		</ul>
    </div>
  </div>
 </form>
</nav>