<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<c:if test="${not empty InfoGerais}">
		<div class="col-md-2">
			<label>Ficha Clínica</label>
			<div class="well well-sm fichaClinica">${InfoGerais.ficha_clinica}</div> 
		</div>
		<div class="col-md-2">
			<label for="example-date-input">Data</label> 
			<div class="well well-sm data">${InfoGerais.data}</div> 
		</div>
		<div class="col-md-3">
			<label>Setor</label>
			<div class="well well-sm setor">${InfoGerais.setor}</div> 
		</div>
		<div class="col-md-3">
			<label>Nome do Animal</label> 
			<div class="well well-sm nome">${InfoGerais.animal.nome}</div> 
		</div>
		<div class="col-md-3">
			<label>Espécie</label>
			<div class="well well-sm especie">${InfoGerais.animal.especie}</div> 
		</div>
		<div class="col-md-3">
			<label>Raça</label>
			<div class="well well-sm raca">${InfoGerais.animal.raca}</div> 
		</div>
		<div class="col-md-2">
			<label>Sexo</label>
			<div class="well well-sm sexo">${InfoGerais.animal.sexo}</div> 
		</div>
		<div class="col-md-2">
			<label>Idade</label>
			<div class="well well-sm idade">${InfoGerais.animal.idade}</div> 
		</div>
		<div class="col-md-3">
			<label>Aptidão</label>
			<div class="well well-sm aptidao">${InfoGerais.aptidao}</div> 
		</div>
		<div class="col-md-2">
			<label>Peso</label>
			<div class="well well-sm peso">${InfoGerais.animal.peso}</div> 
		</div>
		<div class="col-md-3">
			<label>Proprietário</label>
			<div class="well well-sm proprietario">${InfoGerais.animal.proprietario.nome}</div> 
		</div>
		<div class="col-md-3">
			<label>Endereço</label>
			<div class="well well-sm endereco">${InfoGerais.animal.proprietario.endereco}</div> 
		</div>
		<div class="col-md-3">
			<label>Cidade / Estado</label>
			<div class="well well-sm cidade">${InfoGerais.cidade}</div> 
		</div>
		<div class="col-md-2">
			<label>Cep</label>
			<div class="well well-sm cep">${InfoGerais.animal.proprietario.cep}</div> 
		</div>
		<div class="col-md-2">
			<label>Telefones</label>
			<div class="well well-sm telefone">${InfoGerais.animal.proprietario.telefone}</div> 
		</div>
	</c:if>
		<a href = "#tab1" id ="edit" data-toggle="tab" data-placement="top" title="Editar Informações"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></a>
</div>