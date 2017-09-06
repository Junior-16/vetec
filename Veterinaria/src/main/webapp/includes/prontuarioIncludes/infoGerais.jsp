<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<form id = "infogerais" method="POST" action="<c:url value="/infoGerais" />">
		<c:if test="${not empty ficha}">
			<div class="col-md-4">
				<label>Ficha Clínica</label> <input class="form-control" name="ficha" value = "${ficha.ficha_clinica}">
			</div>
			<div class="col-md-4">
				<label>Data</label> <input class="form-control" name="data" value="${ficha.data}">
			</div>
			<div class="col-md-4">
				<label>Setor</label> <input class="form-control" name="setor" value="${ficha.setor}">
			</div>
			<div class="col-md-4">
				<label>Nome do Animal</label> <input class="form-control" name = "animal" value="<c:url value="${ficha.animal.nome}"/>">
			</div>
			<div class="col-md-4">
				<label>Espécie</label> <input class="form-control" name="especie" value="<c:url value="${ficha.animal.especie}"/>">
			</div>
			<div class="col-md-4">
				<label>Raça</label> <input class="form-control" name="raca" value="<c:url value="${ficha.animal.raca}"/>">
			</div>
			<div class="col-md-2">
				<label>Sexo</label> <input class="form-control" name="sexo" value="<c:url value="${ficha.animal.sexo}"/>">
			</div>
			<div class="col-md-2">
				<label>Idade</label> <input class="form-control" name="idade" value="<c:url value="${ficha.animal.idade}"/>">
			</div>
			<div class="col-md-4">
				<label>Aptidão</label> <input class="form-control" name="aptidao" value="${ficha.aptidao}">
			</div>
			<div class="col-md-4">
				<label>Peso</label> <input class="form-control" name="peso" value="<c:url value="${ficha.animal.peso}"/>">
			</div>
			<div class="col-md-4">
				<label>Proprietário</label> <input class="form-control" name = "proprietario" value="<c:url value="${ficha.animal.proprietario.nome}"/>">
			</div>
			<div class="col-md-4">
				<label>Endereço</label> <input class="form-control" name="endereco" value="<c:url value="${ficha.animal.proprietario.endereco}"/>">
			</div>
			<div class="col-md-4">
				<label>Cidade / Estado</label> <input class="form-control" name="cidade" value = "${ficha.cidade}">  
			</div>
			<div class="col-md-2">
				<label>Cep</label> <input class="form-control" id="cep" name="cep" value="<c:url value="${ficha.animal.proprietario.cep}"/>">
			</div>
			<div class="col-md-3">
				<label>Telefones</label> <input class="form-control" name="telefone" value="<c:url value="${ficha.animal.proprietario.telefone}"/>">
			</div>
		</c:if>
	</form>
</div>