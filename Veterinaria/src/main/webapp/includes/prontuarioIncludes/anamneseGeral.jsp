<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${not empty AnamneseGeral || empty AnamneseGeral }">
	<div class="form-group">
		<label>Motivo Principal da Consulta</label>
		<textarea class="form-control" rows="3" id="motivoConsulta"
			name="motivoConsulta">${AnamneseGeral.motivoConsulta}</textarea>
	</div>
	<div class="form-group">
		<label>Antecedentes Mórbidos</label>
		<textarea class="form-control" rows="3" id="antecedentesMorbidos"
			name="antecedentesMorbidos">${AnamneseGeral.antecedentesMorbidos}</textarea>
	</div>
	<div class="form-group">
		<label>Medidas Sanitárias</label>
		<textarea class="form-control" rows="3" id="medidasSanitarias"
			name="medidasSanitarias">${AnamneseGeral.medidasSanitarias}</textarea>
	</div>
</c:if>
<div id="ok1" data-toggle="tooltip" data-placement="top"
	title="Salvar">
	<span id="icon-save" class="glyphicon glyphicon-ok"></span>
</div>
<a href = "#anamneseGeral" id ="see1" data-toggle="tab" data-placement="top" title="Ver Informações"><span id = "icon-save" class="glyphicon glyphicon-eye-open"></span></a>

