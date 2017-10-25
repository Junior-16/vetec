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
	<form id="changeProfile" method="GET" action="<c:url value="/modificarPerfil"/>">
		<div class="jumbotron profile">
			<div class="row">
				<div class="perfilContainer">
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
				</div>	
				<div class ="change1" data-toggle="tooltip" data-placement="top" title="Editar"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></div>
			</div>
			
		</div>
	</form>
</div>
<c:import url="/includes/footer.jsp" />