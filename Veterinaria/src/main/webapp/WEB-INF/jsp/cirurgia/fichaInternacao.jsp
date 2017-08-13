<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp"/>
	<c:import url="/includes/navDocsCirurgia.jsp"/>
	
	<form method="POST" action="<c:url value="/ficha_internacao" />" >	
		<div class="row">
			<div class="col-md-6">
				<label>Identificação</label>
				<input class="form-control" name="identificação-fi"> 
			</div>
			<div class="col-md-6">
				<label>Prontuário</label>
				<input class="form-control" name="prontuario"> 
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<label>Espécie</label>
				<input class="form-control" name="espécie"> 
			</div>
			<div class="col-md-3">
				<label>Raça</label>
				<input class="form-control" name="raca"> 
			</div>
			<div class="col-md-3">
				<label>Sexo</label>
				<input class="form-control" name="sexo"> 
			</div>
			<div class="col-md-3">
				<label>Idade</label>
				<input class="form-control" name="idade"> 
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<label>Proprietário</label>
				<input class="form-control" name="proprietario">
			</div>
		</div>
	</form>
</div>

<c:import url="/includes/footer.jsp"/>