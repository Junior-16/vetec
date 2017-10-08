<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<form id = "salvarProprietario" method="POST" action="<c:url value="/modificarProprietario"/>">
		<c:if test="${not empty changeOwner}">
			<div class="row container-fluid">
				<div class=col-md-3>
					<label>Nome </label> <input class="form-control" name="nome"
						value="<c:url value="${changeOwner.nome}"/>">
				</div>
				<div class=col-md-2>
					<label>CPF</label> <input class="form-control" name="cpf" id="cpf"
						value="<c:url value="${changeOwner.cpf}"/>">
				</div>
				<div class=col-md-2>
					<label>Telefone</label> <input class="form-control" id="telefone"
						name="telefone"
						value="<c:url value="${changeOwner.telefone}"/>">
				</div>
				<div class="col-md-4">
					<label>Profissão</label> <input class="form-control" name="profissao"
						value="<c:url value="${changeOwner.profissao}"/>">
				</div>
				<div class=col-md-2>
					<label>CEP</label> <input class="form-control" name="cep"
						value="<c:url value="${changeOwner.cep}"/>" id="cep">
				</div>
				<div class="col-md-3">
					<label>Endereço</label> <input class="form-control" name="endereco"
						value="<c:url value="${changeOwner.endereco}"/>">
				</div>
				<div class="col-md-4">
					<label>Referencias</label> <input class="form-control" name="referencias"
						value="<c:url value="${changeOwner.referencias}"/>">
				</div>
				
			</div>
		</c:if>
		<div class="salvarProprietario" data-toggle="tooltip" data-placement="top" title="" data-original-title="Salvar"><span id="icon-save" class="glyphicon glyphicon-ok"></span></div>
	</form>
</div>
<c:import url="/includes/footer.jsp"/>