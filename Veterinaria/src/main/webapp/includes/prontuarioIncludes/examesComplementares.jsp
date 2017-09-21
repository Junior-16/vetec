<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "hemograma"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Hemograma</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "raspado"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Raspado de Pele</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "bioquimicos"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Bioquímicos</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "citopatologico"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Citopatológico</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "urina"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Urina</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "histopatologico"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Histopatológico</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "ecg"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">ECG</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "ultrassonografia"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Ultrassonografia</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "swab"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Swab</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "radio"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Radiografia</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "liquidos"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Líquidos Cavitários</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "copro"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Coproparasitológico</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input"  id = "outros"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Outros</span>
		</label>
		<div class="form-group">
			<textarea class="form-control" id="others" rows="2" disabled="disabled"></textarea>
		</div>
	</div>
	<div id ="ok4" data-toggle="tooltip" data-placement="top" title="Salvar"><span id = "icon-save" class="glyphicon glyphicon-ok"></span></div>
	
</div>
