<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp"/>
	<c:import url="/includes/navDocsCirurgia.jsp"/>

	<form method="POST" action="<c:url value="/ficha_anestesica" />" >
		<div class="row">
			<div class="col-md-6">
				<h3>Identificação do Proprietário</h3>
			</div>
			<div class="col-md-6">
				<h3>Identificação do Animal</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<label>Nome</label>
				<input class="form-control" name="nome-proprietario">
			</div>
			<div class="col-md-2">
				<label>CPF</label>
				<input class="form-control" name="cpf">
			</div>
			<div class="col-md-4">
				<label>Nome</label>
				<input class="form-control" name="nome-animal">
			</div>
			<div class="col-md-2">
				<label>CPF</label>
				<input class="form-control" name="cpf">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<label>Endereço</label>
				<input class="form-control" name="endereco">
			</div>
			<div class="col-md-2">
				<label>Cidade</label>
				<input class="form-control" name="cidade">
			</div>
			<div class="col-md-4">
				<label>Espécie</label>
				<input class="form-control" name="especie">
			</div>
			<div class="col-md-2">
				<label>Raça</label>
				<input class="form-control" name="raca">
			</div>
		</div>				
		<div class="row">
			<div class="col-md-4">
				<label>Bairro</label>
				<input class="form-control" name="nome-animal">
			</div>
			<div class="col-md-2">
				<label>Telefone</label>
				<input class="form-control" name="telefone">
			</div>
			<div class="col-md-2">
				<label>Sexo</label>
				<input class="form-control" name="sexo">
			</div>
			
			<div class="col-md-2">
				<label>Registro/Chip</label>
				<input class="form-control" name="registro">
			</div>
			<div class="col-md-2">
				<label>Cidade</label>
				<input class="form-control" name="cidade">
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>Cirurgia/Procedimento Proposto</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Procedimento</label>
				<input class="form-control" name="procedimento">
			</div>
			<div class="col-md-6">
				<label>Cirurgião</label>
				<input class="form-control" name="cirurgiao">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Auxiliares</label>
				<input class="form-control" name="auxiliares">
			</div>
			<div class="col-md-6">
				<label>Anestesista</label>
				<input class="form-control" name="anestesistas">
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<label>Grupo</label>
				<input class="form-control" name="grupo">
			</div>
			<div class="col-md-3">
				<label>Turma</label>
				<input class="form-control" name="turma">
			</div>
			<div class="col-md-3">
				<label>Data</label>
				<input class="form-control" name="data">
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>Alterações na Anmnese</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<textarea class="form-control" rows="2"></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>Descrição do Procedimento Cirúrgico</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<textarea class="form-control" rows="15"></textarea>
			</div>
		</div>
	</form>
	<br>
	<br>
</div>

<c:import url="/includes/footer.jsp"/>