<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty ExameFisico || empty ExameFisico}">
	<div class="row">
		<div class="col-md-3">
			<label>Nível de Consciência</label> 
			<div class="well well-sm conciencia">${ExameFisico.conciencia}</div>
			<label>Escore Corporal</label> 
			<div class="well well-sm escore">${ExameFisico.escoreCorporal}</div>
		</div>
		<div class="col-md-2">
			<label>TPC</label>
			<div class="well well-sm tempoPreencimento">${ExameFisico.tempoPreenchimento}</div>
		</div>
		<div class="col-md-2">
			<label>T°C</label> 
			<div class="well well-sm tempCorporea">${ExameFisico.temperatura}</div>
		</div>
		<div class="col-md-2">
			<label>FR</label> 
			<div class="well well-sm freqRespiratoria">${ExameFisico.freqRespiratoria}</div>
		</div>
		<div class="col-md-2">
			<label>MR</label> 
			<div class="well well-sm medResidente">${ExameFisico.medResidente}</div>
		</div>
		<div class="col-md-2">
			<label>MI</label> 
			<div class="well well-sm micropapulas">${ExameFisico.micropapulas}</div>
		</div>
		<div class="col-md-2">
			<label>FC</label> 
			<div class="well well-sm freqCardiaca">${ExameFisico.freqCardiaca}</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Postura do Tronco e Membros</label>
				<div class="well well-sm postura">${ExameFisico.postura}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Coloração das Mucosas</label>
				<div class="well well-sm mucosas">${ExameFisico.coloracao}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Hidratação</label>
				<div class="well well-sm hidratacao">${ExameFisico.hidratacao}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Pulso</label>
				<div class="well well-sm pulso">${ExameFisico.pulso}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Auscultação Cardíaca</label>
				<div class="well well-sm auscuCardiaca">${ExameFisico.auscCardiaca}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Auscultação Respiratória</label>
				<div class="well well-sm auscuRespiratoria">${ExameFisico.auscRespiratoria}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Palpação Abdominal / Retal</label>
				<div class="well well-sm palpacao">${ExameFisico.palpacao}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Percussão</label>
				<div class="well well-sm percussao">${ExameFisico.percussao}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Linfonodos</label>
				<div class="well well-sm linfondos">${ExameFisico.linfonodos}</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label>Observações Complementares</label>
				<div class="well well-sm observacoes">${ExameFisico.observacoes}</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Suspeita Clínica / Diferenciais</label>
				<div class="well well-sm suspeira">${ExameFisico.suspeita}</div>
			</div>
		</div>
		<a href = "#tab4" id ="edit3" data-toggle="tab" data-placement="top" title="Editar"><span id = "icon-save" class="glyphicon glyphicon-edit"></span></a>
	</div>
</c:if>