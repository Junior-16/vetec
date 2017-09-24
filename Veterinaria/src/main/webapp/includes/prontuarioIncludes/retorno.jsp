<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class = "col-md-6">
		<div class="col-md-12">
			<label>Anamnese</label>
		</div>
		<div class="col-md-12">
			<label>1. Evolução do Caso</label>
			<textarea class="form-control" id="anamneseRetorno" rows="2"></textarea>
		</div>
		<div class="col-md-12">
			<label>2. Exame Físico</label>
		</div>
		<div class="col-md-6">
			<label>Nível de Consciência</label> 
					<select class="form-control" id = "concienciaRetorno">
						<option selected>${ExameFisico.conciencia}</option>
						<option>Normal</option>
						<option>Diminuído</option>
						<option>Sonolência</option>
						<option>Esturpor</option>
						<option>Coma</option>
					</select> 
			<label>Escore Corporal</label> 
				<select class="form-control" id = "escoreRetorno">
					<option selected>${ExameFisico.escoreCorporal}</option>
					<option>Caquexia</option>
					<option>Magro</option>
					<option>Normal</option>
					<option>Gordo</option>
					<option>Obeso</option>
				</select>
				<div class="form-group">
					<label>Hidratação</label>
					<textarea class="form-control" id="hidratacaoRetorno" rows="2">${ExameFisico.hidratacao}</textarea>
				</div>
				<div class="col-md-6">
					<label>TPC</label> <input class="form-control" id = "tempoPreencimentoRetorno" value="${ExameFisico.tempoPreenchimento}">
				</div>
				<div class="col-md-6">
					<label>T°C</label> <input class="form-control" id = "tempCorporeaRetorno" value="${ExameFisico.temperatura}">
				</div>
				<div class="col-md-6">
					<label>MI</label> <input class="form-control" id = "micropapulasRetorno" value="${ExameFisico.micropapulas}">
				</div>
				<div class="col-md-6">
					<label>FC</label> <input class="form-control" id = "freqCardiacaRetorno" value="${ExameFisico.freqCardiaca}">
				</div>
				<div class="col-md-12">
					<div class="form-group">
						<label>Auscultação cardio-respiratória</label>
						<textarea class="form-control" id="auscuRespiratoriaRetorno" rows="2">${ExameFisico.auscRespiratoria}</textarea>
					</div>
				</div>
			<div class="col-md-12">
				<div class="form-group">
					<label>Palpação Abdominal / Retal</label>
					<textarea class="form-control" id="palpacaoRetorno" rows="2">${ExameFisico.palpacao}</textarea>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Postura do Tronco e Membros</label>
				<textarea class="form-control" id="posturaRetorno" rows="2">${ExameFisico.postura}</textarea>
			</div>
			<div class="form-group">
				<label>Coloração das Mucosas</label>
				<textarea class="form-control" id="mucosasRetorno" rows="2">${ExameFisico.coloracao}</textarea>
			</div>
			<div class="form-group">
				<label>Pulso</label>
				<textarea class="form-control" id="pulsoRetorno" rows="2">${ExameFisico.pulso}</textarea>
			</div>
			<div class="col-md-6">
				<label>FR</label> <input class="form-control" id = "freqRespiratoriaRetorno" value="${ExameFisico.freqRespiratoria}">
			</div>
			<div class="col-md-6">
				<label>MR</label> <input class="form-control" id = "medResidenteRetorno" value="${ExameFisico.medResidente}">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Percussão</label>
				<textarea class="form-control" id="percussaoRetorno" rows="2">${ExameFisico.percussao}</textarea>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Linfonodos</label>
				<textarea class="form-control" id="linfondosRetorno" rows="2">${ExameFisico.linfonodos}</textarea>
			</div>
		</div>
		<div class="col-md-12">
			<label>3. Exames Complementares Solicitados</label>
		</div>
		<div class="col-md-3">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "hemogramaRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Hemograma</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "raspadoRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Raspado de Pele</span>
		</label>
	</div>
	<div class="col-md-3">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "bioquimicosRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Bioquímicos</span>
		</label>
	</div>
	<div class="col-md-3">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "citopatologicoRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Citopatológico</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "urinaRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Urina</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "histopatologicoRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Histopatológico</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "ecgRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">ECG</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "ultrassonografiaRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Ultrassonografia</span>
		</label>
	</div>
	<div class="col-md-2">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "swabRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Swab</span>
		</label>
	</div>
	<div class="col-md-3">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "radioRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Radiografia</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "liquidosRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Líquidos Cavitários</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input" id = "coproRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Coproparasitológico</span>
		</label>
	</div>
	<div class="col-md-4">
		<label class="custom-control custom-checkbox"> <input
			type="checkbox" class="custom-control-input"  id = "outrosRetornoRetorno"> <span
			class="custom-control-indicator"></span> <span
			class="custom-control-description">Outros</span>
		</label>
		<div class="form-group">
			<textarea class="form-control" id="othersRetorno" rows="2" disabled="disabled"></textarea>
		</div>
	</div>		
	</div>
	
	<div class="col-md-6">
	<div class="col-md-12">
		<label>4. Resultados dos Exames por Imagem</label>
	</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input" id = "raioRetorno"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Raio-X</span>
			</label>
		</div>
		<div class="col-md-6">
			<label class="custom-control custom-checkbox"> <input
				type="checkbox" class="custom-control-input" id = "ultrassonRetorno"> <span
				class="custom-control-indicator"></span> <span
				class="custom-control-description">Ultrassom</span>
			</label>
		</div>
		<div class="col-md-4">
			<label>N° do Exame</label> <input class="form-control" id = "nExameRetorno">
		</div>
		<div class="col-md-4">
			<label>Região</label> <input class="form-control" id = "regiaoRetorno">
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="example-date-input">Data</label> <input
							class="form-control" type="date" value="xxxx-xx-xx"
							id="dataRetorno">
				</div>
		</div>
		<div class="col-md-12">
			<div class="form-group">
				<label>Laudo</label>
				<textarea class="form-control" id="laudoRetorno" rows="2"></textarea>
			</div>
		</div>
		<div class="col-md-12">
			<label>5. Resultados dos Exames Laboratoriais</label>
		</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Diagnóstico Final / Procedimento</label>
					<textarea class="form-control" id="diagnosticoRetorno" rows="2"></textarea>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Tratamento</label>
					<textarea class="form-control" id="tratamentoRetorno" rows="2"></textarea>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<label for="example-date-input">Tratamento Domiciliar</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="tratamentoDomiciliarRetorno">
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<label for="example-date-input">Retorno</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="retornoRetorno">
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<label for="example-date-input">Internado</label> <input
						class="form-control" type="date" value="xxxx-xx-xx"
						id="internadoRetorno">
				</div>
			</div>
			<div class="col-md-4">
					<div class="form-group">
						<label for="example-date-input">Alta</label> <input
							class="form-control" type="date" value="xxxx-xx-xx"
							id="altaRetorno">
					</div>
			</div>
			<div class="col-md-4">
					<div class="form-group">
						<label for="example-datetime-local-input"
							class="col-2 col-form-label">Obito</label> <input
							class="form-control" type="datetime-local"
							value="2011-08-19T13:45:00" id="obitoRetorno">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="example-datetime-local-input"
							class="col-2 col-form-label">Eutanásia</label> <input
							class="form-control" type="datetime-local"
							value="2011-08-19T13:45:00" id="eutanasiaRetorno">
					</div>
				</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Responsável</label>
					<textarea class="form-control" id="responsavelRetorno" rows="2"></textarea>
				</div>
			</div>
	</div>
	<div id="ok6" data-toggle="tooltip" data-placement="top" title="Salvar"> 
			<span id="icon-save" class="glyphicon glyphicon-ok"></span></div>
</div>