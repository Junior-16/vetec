<div class="row">
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
</div>