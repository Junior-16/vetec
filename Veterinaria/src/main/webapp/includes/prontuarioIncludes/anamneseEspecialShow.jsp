<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<c:if test="${not empty AnamneseEspecial || empty AnamneseEspecial}">
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Visual</label>
				<div class="well well-sm sistemaVisual">${AnamneseEspecial.sistemaVisual}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Respiratório e Cardiovascular</label>
				<div class="well well-sm sistemaRespiratorio">${AnamneseEspecial.sistemaRespiratorio}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Digestivo</label>
				<div class="well well-sm sistemaDigestivo">${AnamneseEspecial.sistemaDigestivo}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Reprodutivo</label>
				<div class="well well-sm sistemaReprodutivo">${AnamneseEspecial.sistemaReprodutivo}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Urinário</label>
				<div class="well well-sm sistemaUrinario">${AnamneseEspecial.sistemaUrinario}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Nervoso</label>
				<div class="well well-sm sistemaNervoso">${AnamneseEspecial.sistemaNervoso}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Sistema Locomotor</label>
				<div class="well well-sm sistemaLocomotor">${AnamneseEspecial.sistemaLocomotor}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Pele/Anexos e Sistema Auditivo</label>
				<div class="well well-sm peleAnexos">${AnamneseEspecial.peleAnexos}</div>
			</div>
		</div>
		<a href = "#tab3" id ="edit2" data-toggle="tab" data-placement="top" title="Editar Informações"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></a>

	</c:if>
</div>

