<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
	<c:if test="${not empty AnamneseEspecial}">
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Visual</label>
				<textarea class="form-control" id="sistemaVisual" rows="2">${AnamneseEspecial.sistemaVisual}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Respiratório e Cardiovascular</label>
				<textarea class="form-control" id="sistemaRespiratorio" rows="2">${AnamneseEspecial.sistemaRespiratorio}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Digestivo</label>
				<textarea class="form-control" id="sistemaDigestivo" rows="2">${AnamneseEspecial.sistemaDigestivo}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Reprodutivo</label>
				<textarea class="form-control" id="sistemaReprodutivo" rows="2">${AnamneseEspecial.sistemaReprodutivo}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Urinário</label>
				<textarea class="form-control" id="sistemaUrinario" rows="2">${AnamneseEspecial.sistemaUrinario}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Nervoso</label>
				<textarea class="form-control" id="sistemaNervoso" rows="2">${AnamneseEspecial.sistemaNervoso}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Sistema Locomotor</label>
				<textarea class="form-control" id="sistemaLocomotor" rows="2">${AnamneseEspecial.sistemaLocomotor}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Pele/Anexos e Sistema Auditivo</label>
				<textarea class="form-control" id="peleAnexos" rows="2">${AnamneseEspecial.peleAnexos}</textarea>
			</div>
		</div>
		<div id ="anamneseEspecial" data-toggle="tooltip" data-placement="top" title="Salvar"><span id = "icon-save" class="glyphicon glyphicon-ok"></span></div>
	</c:if>
</div>

