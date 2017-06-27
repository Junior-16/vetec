<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>
	<div class="container-fluid" id="conteudo">
	<!--nav navigation-->
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
		      </a>
		    <div class="texto">
			   	<h1>|
			    </h1>
			    <h5>Cadastrar</h5>
			</div>
		    </div>
		  </div>
		</nav>
		<div class="row formulario">
			<div class="col-md-4">
				<label>Nome do Proprietário</label>
                <input class="form-control">
			</div>
			<div class="col-md-2" >
				<label>Cep</label>
                <input type="text" class="form-control" maxlength="10" id="cep">
			</div>
			<div class="col-md-3">
				<label>CPF</label>
                <input class="form-control" id="cpf" maxlength="14">
			</div>
			<div class="col-md-3">
				<label>Telefone</label>
                <input class="form-control" id="cep" placeholder="(xx) xxxxx-xxxx">
			</div>
			<div class="col-md-6">
				<label>Profissão</label>
                <input class="form-control">
                <label>Endereço</label>
	            <textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
			</div>
			<div class="col-md-6">
				<label>Referências</label>
                <textarea class="form-control" id="exampleTextarea" rows="6"></textarea>
                
			</div>
		</div>
	</div>
<c:import url="/includes/footer.jsp"/>