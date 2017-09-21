<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-md-6">
<<<<<<< HEAD
		<div class="col-md-12">
			<label>Resultados dos Exames por Imagem</label>
		</div>
=======
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input" id = "raio"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Raio-X</span>
			</label>
		</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input" id = "ultrasson"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Ultrassom</span>
			</label>
		</div>
		<div class="col-md-4">
			<label>N° do Exame</label> <input class="form-control" id = "nExame">
		</div>
		<div class="col-md-4">
			<label>Região</label> <input class="form-control" id = "regiao">
		</div>
		<div class="col-md-4">
			<div class="form-group">
					<label for="example-date-input">Data</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="data" >
				</div>
		</div>
<<<<<<< HEAD
		<div class="col-md-12">
=======
		<div class="col-md-6">
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
			<div class="form-group">
				<label>Laudo</label>
				<textarea class="form-control" id="laudo" rows="2"></textarea>
			</div>
<<<<<<< HEAD
		</div>
		<div class="col-md-12">
			<label>Resultados dos Exames Laboratoriais</label>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Diagnóstico Final / Procedimento</label>
				<textarea class="form-control" id="diagnostico" rows="2"></textarea>
=======
			<div class="form-group">
				<label>Resultado dos Exames Laboratoriais</label>
				<textarea class="form-control" id="resultadoExames" rows="2"></textarea>
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
<<<<<<< HEAD
				<label>Tratamento</label>
				<textarea class="form-control" id="tratamento" rows="2"></textarea>
=======
				<label>Diagnóstico Final / Procedimento</label>
				<textarea class="form-control" id="diagnostico" rows="2"></textarea>
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
			</div>
			<div class="form-group">
				<label>Tratamento</label>
				<textarea class="form-control" id="tratamento" rows="2"></textarea>
			</div>
		</div>
		</div>
<<<<<<< HEAD
		</div>
=======
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
		<div class="col-md-6">
			<div class="col-md-6">
				<div class="form-group">
					<label for="example-date-input">Tratamento Domiciliar</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="tratamentoDomiciliar">
				</div>
				<div class="form-group">
					<label for="example-date-input">Retorno</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="retorno">
				</div>
				<div class="form-group">
					<label for="example-date-input">Internado</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="internado">
				</div>
			</div>
			<div class="col-md-6">
					<div class="form-group">
						<label for="example-date-input">Alta</label> <input
							class="form-control" type="date" value="xxxx-xx-xx"
							id="alta">
					</div>
					<div class="form-group">
						<label for="example-datetime-local-input"
							class="col-2 col-form-label">Obito</label> <input
							class="form-control" type="datetime-local"
							value="2011-08-19T13:45:00" id="obito">
					</div>
					<div class="form-group">
						<label for="example-datetime-local-input"
							class="col-2 col-form-label">Eutanásia</label> <input
							class="form-control" type="datetime-local"
							value="2011-08-19T13:45:00" id="eutanasia">
					</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Responsável</label>
					<textarea class="form-control" id="responsavel" rows="2"></textarea>
				</div>
			</div>
	</div>
	<div id="ok5" data-toggle="tooltip" data-placement="top" title="Salvar"> 
		<span id="icon-save" class="glyphicon glyphicon-ok"></span>
	</div>
<<<<<<< HEAD
	<a href = "#resultados" id ="see5" data-toggle="tab" data-placement="top" title="Ver Informações"><span id = "icon-save" class="glyphicon glyphicon-eye-open"></span></a>
=======
	<a href = "#" id ="see5" data-toggle="tab" data-placement="top" title="Ver Informações"><span id = "icon-save" class="glyphicon glyphicon-eye-open"></span></a>
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
	
</div>