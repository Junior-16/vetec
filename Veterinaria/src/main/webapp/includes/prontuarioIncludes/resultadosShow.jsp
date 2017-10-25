<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-md-6">
		<div class="col-md-12">
			<label>Resultados dos Exames por Imagem</label>
		</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input raio"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Raio-X</span>
			</label>
		</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input ultrasson"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Ultrassom</span>
			</label>
		</div>
		<div class="col-md-4">
			<label>N° do Exame</label>
			<div class="well well-sm nExame"></div>
		</div>
		<div class="col-md-4">
			<label>Região</label> 
			<div class="well well-sm regiao"></div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Data</label>
				<div class="well well-sm data"></div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group">
				<label>Laudo</label>
				<div class="well well-sm laudo"></div>
			</div>
		</div>
		<div class="col-md-12">
			<label>Resultados dos Exames Laboratoriais</label>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Diagnóstico Final / Procedimento</label>
				<div class="well well-sm diagnostico"></div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Tratamento</label>
				<div class="well well-sm tratamento"></div>
			</div>
		</div>
		</div>
		<div class="col-md-6">
			<div class="col-md-6">
				<div class="form-group">
					<label>Tratamento Domiciliar</label>
					<div class="well well-sm tratamentoDomiciliar" type="date"></div>
				</div>
				<div class="form-group">
					<label>Retorno</label>
					<div class="well well-sm retorno" type="date"></div>
				</div>
				<div class="form-group">
					<label>Internado</label>
					<div class="well well-sm internado" type="date"></div>
				</div>
			</div>
			<div class="col-md-6">
					<div class="form-group">
						<label for="example-date-input">Alta</label> 
						<div class="well well-sm alta" type="date"></div>
					</div>
					<div class="form-group">
						<label>Obito</label> 
						<div class="well well-sm obito" type="datetime-local"></div>
					</div>
					<div class="form-group">
						<label>Eutanásia</label> 
						<div class="well well-sm eutanasia" type="datetime-local"></div>
					</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Responsável</label>
					<div class="well well-sm responsavel"></div>
				</div>
			</div>
	</div>
	<a href = "#tab6" id ="edit5" data-toggle="tab" data-placement="top" title="Editar Informações"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></a>
	
</div>