<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-md-6">
		<div class="col-md-12">
			<label>Resultado dos Exames por Imagem</label>
		</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Raio-X</span>
			</label>
		</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Ultrassom</span>
			</label>
		</div>
		<div class="col-md-4">
			<label>N° do Exame</label> <input class="form-control">
		</div>
		<div class="col-md-4">
			<label>Região</label> <input class="form-control">
		</div>
		<div class="col-md-4">
			<label>Data</label> <input class="form-control">
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label>Laudo</label>
				<textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
			</div>
		</div>

	</div>
	<div class="col-md-6">
		<div class="col-md-12">
			<label>Resultado dos Exames por Imagem</label>
			<div class="form-group">
				<textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
			</div>
		</div>
		<div class="col-md-12">
			<label>Diagnóstico Final / Procedimento</label>
			<div class="form-group">
				<textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
			</div>
		</div>
	</div>
</div>