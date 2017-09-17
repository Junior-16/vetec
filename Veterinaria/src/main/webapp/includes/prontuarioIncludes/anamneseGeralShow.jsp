<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
<c:if test="${not empty AnamneseGeral || empty AnamneseGeral }">
	<div class="col-md-4">
		<div class="form-group">
			<label>Motivo Principal da Consulta</label>
			<div class="well well-sm telefone motivo">${AnamneseGeral.motivoConsulta}</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="form-group">
			<label>Antecedentes Mórbidos</label>
			<div class="well well-sm telefone antecedentes">${AnamneseGeral.antecedentesMorbidos}</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="form-group">
			<label>Medidas Sanitárias</label>
			<div class="well well-sm telefone medidas">${AnamneseGeral.medidasSanitarias}</div>
		</div>
	</div>
</c:if>
<a href = "#tab2" id ="edit1" data-toggle="tab" data-placement="top" title="Editar Informações"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></a>
</div>