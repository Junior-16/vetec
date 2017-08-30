<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<c:if test="${not empty animal}">
		<div class="col-md-4">
			<label>Ficha Clínica</label> <input class="form-control">
		</div>
		<div class="col-md-4">
			<label>Data</label> <input class="form-control">
		</div>
		<div class="col-md-4">
			<label>Setor</label> <input class="form-control">
		</div>
		<div class="col-md-4">
			<label>Nome do Animal</label> <input class="form-control" value="<c:url value="${animal.nome}"/>">
		</div>
		<div class="col-md-4">
			<label>Espécie</label> <input class="form-control" value="<c:url value="${animal.especie}"/>">
		</div>
		<div class="col-md-4">
			<label>Raça</label> <input class="form-control" value="<c:url value="${animal.raca}"/>">
		</div>
		<div class="col-md-2">
			<label>Sexo</label> <input class="form-control" value="<c:url value="${animal.sexo}"/>">
		</div>
		<div class="col-md-2">
			<label>Idade</label> <input class="form-control" value="<c:url value="${animal.idade}"/>">
		</div>
		<div class="col-md-4">
			<label>Aptidão</label> <input class="form-control">
		</div>
		<div class="col-md-4">
			<label>Peso</label> <input class="form-control" value="<c:url value="${animal.peso}"/>">
		</div>
		<div class="col-md-4">
			<label>Proprietário</label> <input class="form-control" value="<c:url value="${animal.proprietario.nome}"/>">
		</div>
		<div class="col-md-4">
			<label>Endereço</label> <input class="form-control" value="<c:url value="${animal.proprietario.endereco}"/>">
		</div>
		<div class="col-md-4">
			<label>Cidade / Estado</label> <input class="form-control">
		</div>
		<div class="col-md-2">
			<label>Cep</label> <input class="form-control" id="cep" value="<c:url value="${animal.proprietario.cep}"/>">
		</div>
		<div class="col-md-3">
			<label>Telefones</label> <input class="form-control" value="<c:url value="${animal.proprietario.telefone}"/>">
		</div>
	</c:if>
</div>