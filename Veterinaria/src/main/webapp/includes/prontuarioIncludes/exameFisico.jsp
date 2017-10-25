<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty ExameFisico || empty ExameFisico}">
	<div class="row">
		<div class="col-md-3">
			<label>Nível de Consciência</label> 
					<select class="form-control" id = "conciencia">
						<option selected>${ExameFisico.conciencia}</option>
						<option>Normal</option>
						<option>Diminuído</option>
						<option>Sonolência</option>
						<option>Esturpor</option>
						<option>Coma</option>
					</select> 
			<label>Escore Corporal</label> 
				<select class="form-control" id = "escore">
					<option selected>${ExameFisico.escoreCorporal}</option>
					<option>Caquexia</option>
					<option>Magro</option>
					<option>Normal</option>
					<option>Gordo</option>
					<option>Obeso</option>
				</select>
		</div>
		<div class="col-md-2">
			<label>TPC</label> <input class="form-control" id = "tempoPreencimento" value="${ExameFisico.tempoPreenchimento}">
		</div>
		<div class="col-md-2">
			<label>T°C</label> <input class="form-control" id = "tempCorporea" value="${ExameFisico.temperatura}">
		</div>
		<div class="col-md-2">
			<label>FR</label> <input class="form-control" id = "freqRespiratoria" value="${ExameFisico.freqRespiratoria}">
		</div>
		<div class="col-md-2">
			<label>MR</label> <input class="form-control" id = "medResidente" value="${ExameFisico.medResidente}">
		</div>
		<div class="col-md-2">
			<label>MI</label> <input class="form-control" id = "micropapulas" value="${ExameFisico.micropapulas}">
		</div>
		<div class="col-md-2">
			<label>FC</label> <input class="form-control" id = "freqCardiaca" value="${ExameFisico.freqCardiaca}">
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Postura do Tronco e Membros</label>
				<textarea class="form-control" id="postura" rows="2">${ExameFisico.postura}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Coloração das Mucosas</label>
				<textarea class="form-control" id="mucosas" rows="2">${ExameFisico.coloracao}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Hidratação</label>
				<textarea class="form-control" id="hidratacao" rows="2">${ExameFisico.hidratacao}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Pulso</label>
				<textarea class="form-control" id="pulso" rows="2">${ExameFisico.pulso}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Auscultação Cardíaca</label>
				<textarea class="form-control" id="auscuCardiaca" rows="2">${ExameFisico.auscCardiaca}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Auscultação Respiratória</label>
				<textarea class="form-control" id="auscuRespiratoria" rows="2">${ExameFisico.auscRespiratoria}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Palpação Abdominal / Retal</label>
				<textarea class="form-control" id="palpacao" rows="2">${ExameFisico.palpacao}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Percussão</label>
				<textarea class="form-control" id="percussao" rows="2">${ExameFisico.percussao}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Linfonodos</label>
				<textarea class="form-control" id="linfondos" rows="2">${ExameFisico.linfonodos}</textarea>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Observações Complementares</label>
				<textarea class="form-control" id="observacoes" rows="2">${ExameFisico.observacoes}</textarea>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Suspeita Clínica / Diferenciais</label>
				<textarea class="form-control" id="suspeira" rows="2">${ExameFisico.suspeita}</textarea>
			</div>
		</div>
		<div id ="ok3" data-toggle="tooltip" data-placement="top" title="Salvar"><span id = "icon-save" class="glyphicon glyphicon-ok"></span></div>
		<a href = "#exameFisico" id ="see3" data-toggle="tab" data-placement="top" title="Ver Informações"><span id = "icon-save" class="glyphicon glyphicon-eye-open"></span></a>
	</div>
</c:if>