<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<c:if test="${not empty ficha}">
		<div class="col-md-2">
			<label>Ficha Clínica</label>
			<div class="well well-sm">${ficha.ficha_clinica}</div> 
		</div>
		<div class="col-md-2">
			<label for="example-date-input">Data</label> 
			<div class="well well-sm">${ficha.data}</div> 
		</div>
		<div class="col-md-3">
			<label>Setor</label>
			<div class="well well-sm">${ficha.setor}</div> 
		</div>
		<div class="col-md-3">
			<label>Nome do Animal</label> 
			<div class="well well-sm">${ficha.animal.nome}</div> 
		</div>
		<div class="col-md-3">
			<label>Espécie</label>
			<div class="well well-sm">${ficha.animal.especie}</div> 
		</div>
		<div class="col-md-3">
			<label>Raça</label>
			<div class="well well-sm">${ficha.animal.raca}</div> 
		</div>
		<div class="col-md-2">
			<label>Sexo</label>
			<div class="well well-sm">${ficha.animal.sexo}</div> 
		</div>
		<div class="col-md-2">
			<label>Idade</label>
			<div class="well well-sm">${ficha.animal.idade}</div> 
		</div>
		<div class="col-md-3">
			<label>Aptidão</label>
			<div class="well well-sm">${ficha.aptidao}</div> 
		</div>
		<div class="col-md-2">
			<label>Peso</label>
			<div class="well well-sm">${ficha.animal.peso}</div> 
		</div>
		<div class="col-md-3">
			<label>Proprietário</label>
			<div class="well well-sm">${ficha.animal.proprietario.nome}</div> 
		</div>
		<div class="col-md-3">
			<label>Endereço</label>
			<div class="well well-sm">${ficha.animal.proprietario.endereco}</div> 
		</div>
		<div class="col-md-3">
			<label>Cidade / Estado</label>
			<div class="well well-sm">${ficha.cidade}</div> 
		</div>
		<div class="col-md-2">
			<label>Cep</label>
			<div class="well well-sm">${ficha.animal.proprietario.cep}</div> 
		</div>
		<div class="col-md-2">
			<label>Telefones</label>
			<div class="well well-sm">${ficha.animal.proprietario.telefone}</div> 
		</div>
	</c:if>
		<a href = "#tab1" id ="ver" data-toggle="tab" data-placement="top" title="Editar Informações"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></a>
</div>