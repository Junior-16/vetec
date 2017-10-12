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
	<div class="container-fluid row">
		<div class="col-md-3">
			<c:import url="/includes/buscar.jsp"/>
		</div>
		<div class="col-md-9">
			<c:if test="${not empty proprietarioInfo}">
				<form id = "changeOwner" method="GET" action="<c:url value="/modificarProprietario"/>">
					<div class="jumbotron">
						<div class="row">
								<div class="col-md-4">
									<label>Nome</label>
									<div class="well well-sm">${proprietarioInfo.nome}</div>
								</div>
								<div class="col-md-3">
									<label>CPF</label>
									<div class="well well-sm">${proprietarioInfo.cpf}</div>
								</div>
								<div class="col-md-2">
									<label>CEP</label>
									<div class="well well-sm">${proprietarioInfo.cep}</div>
								</div>
								<div class="col-md-3">
									<label>Telefone</label>
									<div class="well well-sm">${proprietarioInfo.telefone}</div>
								</div>
								<div class="col-md-4">
									<label>Profissão</label>
									<div class="well well-sm">${proprietarioInfo.profissao}</div>
								</div>
								<div class="col-md-4">
									<label>Endereço</label>
									<div class="well well-sm">${proprietarioInfo.endereco}</div>
								</div>
								<div class="col-md-4">
									<label>Referencias</label>
									<div class="well well-sm">${proprietarioInfo.referencias}</div>
								</div>
							<input type="hidden" value="${proprietarioInfo.nome}" name="nome"/>
							<div class="changeOwner" data-toggle="tooltip" data-placement="top" title="" data-original-title="Editar">
								<span id="icon-save" class="glyphicon glyphicon-edit"></span>
							</div>
						</div>
					</div>
				</form>
			</c:if>
		</div>
	</div>
</div>
<c:import url="/includes/footer.jsp" />