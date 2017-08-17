<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<form id="cadastroAnimal" method="GET" action="<c:url value="/modificarPerfil"/>">
		<div class="jumbotron profile">
			<div class="row">
				<c:if test="${not empty perfil}">
					<div class="col-md-3">
						<label>Nome</label>
						<div class="well well-sm">${perfil.nome}</div>
					</div>
					<div class="col-md-2">
						<label>CPF</label>
						<div class="well well-sm">${perfil.cpf}</div>
					</div>
					<div class="col-md-2">
						<label>CEP</label>
						<div class="well well-sm">${perfil.cep}</div>
					</div>
					<div class="col-md-2">
						<label>Telefone</label>
						<div class="well well-sm">${perfil.telefone}</div>
					</div>
					<div class="col-md-2">
						<label>CRMV</label>
						<div class="well well-sm">${perfil.crmv}</div>
					</div>
					<div class="col-md-3">
						<label>Email</label>
						<div class="well well-sm">${perfil.email}</div>
					</div>
					<div class="col-md-3">
						<label>Endereço</label>
						<div class="well well-sm">${perfil.endereco}</div>
					</div>
					<div class="col-md-4">
						<label>Especialidade</label>
						<div class="well well-sm">${perfil.especialidade}</div>
					</div>
					<div class="col-md-4">
						<label>Estudo</label>
						<div class="well well-sm">${perfil.estudo}</div>
					</div>
				</c:if>
				<div class="col-md-3">
					<button type="submit" class="btn btn-info">
						Modificar <span class="glyphicon glyphicon-edit"></span>
					</button>
				</div>
			</div>
		</div>
		<div class ="change" data-toggle="tooltip" data-placement="top" title="Salvar"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></div>
	</form>
</div>
<c:import url="/includes/footer.jsp" />