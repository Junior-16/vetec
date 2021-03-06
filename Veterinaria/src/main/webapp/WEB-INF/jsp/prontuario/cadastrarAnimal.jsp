<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />

<div class="container-fluid conteudo">
	<c:if test="${not empty permition}">
		<c:if test="${permition.acesso == 2}">
			<c:import url="/includes/navigation.jsp" />
		</c:if>
		<c:if test="${permition.acesso == 1}">
			<c:import url="/includes/navigationNormal.jsp" />
		</c:if>
	</c:if>
	<form  method="POST" id = "cadastroAnimal" action="<c:url value="/cadastrarAnimal"/>">
		<div class="container-fluid">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-4">
						<label>Nome do Animal</label> <input class="form-control" name="nome">
					</div>
					<div class="col-md-3">
						<label>Espécie</label><input class="form-control" name="especie">
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label>Idade</label> <input class="form-control" name="idade">
					</div>
					<div class="col-md-2">
						<label>Peso</label><input class="form-control" name="peso">
					</div>
					<div class="col-md-2">
						<label>Sexo</label> 
						<select class="form-control" name = "sexo">
							<option>Feminino</option>
							<option>Masculino</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label>Raça</label><input class="form-control" name="raca">
						<label>Nome do Proprietario</label><input class="form-control" name="nomeProprietario">
						<c:if test="${not empty NotFoundOwner}">
							<div class="alert alert-danger" role="alert">
								<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
								<span class="sr-only"></span>
								${NotFoundOwner}
							</div>
						</c:if>
					</div>
					<div class="col-md-4">
						<label>Informações Complementares</label>
						<textarea class="form-control" name = "info" id="exampleTextarea" rows="3"></textarea>
					</div>
				</div>
				<div class ="saveAnimal" data-toggle="tooltip" data-placement="top" title="Cadastar"><span id = "icon-save" class="glyphicon glyphicon-ok"></span></div>
			</div>
		</div>
	</form>
</div>

<c:import url="/includes/footer.jsp" />