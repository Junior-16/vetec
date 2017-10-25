<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<div class="row">
			<h1>Ficha Anestésica</h1>
		</div>
		<div class="row">
			<div class="col-md-9">
				<label>Procedimento</label>
				<input class="form-control" name="procediemnto">
			</div>
			<div class="col-md-3">
				<label>Horário de Início</label>
				<input class="form-control" id="horario-inicio" name="horario-inicio">
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<label>Turma</label>
				<input class="form-control" name="turma">
			</div>
			<div class="col-md-3">
				<label>Grupo</label>
				<input class="form-control" name="grupo">
			</div>
			<div class="col-md-3">
				<label>Data</label>
				<input class="form-control" id="data" name="data">
			</div>
			<div class="col-md-3">
				<label>Horário de Término</label>
				<input class="form-control" id="horario-termino" name="horario-termino">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Cirurgião</label>
				<input class="form-control" name="cirurgiao">
			</div>
			<div class="col-md-6">
				<label>Auxiliar</label>
				<input class="form-control" name="auxiliar">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Assistemte</label>
				<input class="form-control" name="assistente">
			</div>
			<div class="col-md-6">
				<label>Instrumentador</label>
				<input class="form-control" name="instrumentador">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label>Anestesista</label>
				<input class="form-control" name="anestesista">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12">
				<h3>Dados do Animal</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<label>Nome</label>
				<input class="form-control" name="nome">
			</div>
			<div class="col-md-2">
				<label">Espécie</label>
				<input class="form-control" name="especie">
			</div>
			<div class="col-md-2">
				<label">Idade</label>
				<input class="form-control" name="idade">
			</div>
			<div class="col-md-2">
				<label">Raça</label>
				<input class="form-control" name="raca">
			</div>
			<div class="col-md-2">
				<label>Sexo</label>
				<input class="form-control" name="sexo">
			</div>
			<div class="col-md-2">
				<label>Peso</label>
				<input class="form-control" name="peso">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3>Medicação Pré-Anestésica</h3>
			</div>
			<div class="col-md-6">
				<h3>Indução Anestésica</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<label>Fármaco</label>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco">
			</div>
			<div class="col-md-2">
				<label>Dose</label>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose">
			</div>
			<div class="col-md-1">
				<label>Via</label>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via">
			</div>
			<div class="col-md-1">
				<label>Tempo</label>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo">
			</div>
			<div class="col-md-2">
				<label>Fármaco</label>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco">
			</div>
			<div class="col-md-2">
				<label>Dose</label>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose">
			</div>
			<div class="col-md-1">
				<label>Via</label>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via">
			</div>
			<div class="col-md-1">
				<label>Tempo</label>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3>Manutenção Anestésica</h3>
			</div>
			<div class="col-md-6">
				<h3>Medicamentos Utilizados durante o Procedimento Cirúrgico</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<label>Medicamento</label>
				<input class="form-control" name="medicamento"><br>
				<input class="form-control" name="medicamento"><br>
				<input class="form-control" name="medicamento"><br>
				<input class="form-control" name="medicamento"><br>
				<input class="form-control" name="medicamento">
			</div>
			<div class="col-md-2">
				<label>Dose</label>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose">
			</div>
			<div class="col-md-2">
				<label>Via</label>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via">
			</div>
			<div class="col-md-2">
				<label>Fármaco</label>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco"><br>
				<input class="form-control" name="farmaco">
			</div>
			<div class="col-md-2">
				<label>Dose</label>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose"><br>
				<input class="form-control" name="dose">
			</div>
			<div class="col-md-1">
				<label>Via</label>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via"><br>
				<input class="form-control" name="via">
			</div>
			<div class="col-md-1">
				<label>Tempo</label>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo"><br>
				<input class="form-control" name="tempo">
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
				<label>Proprietário</label>
				<input class="form-control" name="proprietario">
			</div>
			<div class="col-md-2">
				<label>Telefone</label>
				<input class="form-control" name="telefone">
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
				<label>Professor</label>
				<input class="form-control" name="professor">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3>Materiais Utilizados</h3>
			</div>
			<div class="col-md-6">
				<h3>Observações</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<label>Materiais</label>
				<input class="form-control" name="materiais"><br>
				<input class="form-control" name="materiais"><br>
				<input class="form-control" name="materiais"><br>
				<input class="form-control" name="materiais"><br>
				<input class="form-control" name="materiais">
			</div>
			<div class="col-md-2">
				<label>Quantidade</label>
				<input class="form-control" name="quantidade"><br>
				<input class="form-control" name="quantidade"><br>
				<input class="form-control" name="quantidade"><br>
				<input class="form-control" name="quantidade"><br>
				<input class="form-control" name="quantidade">
			</div>
			
			<div class="col-md-6">
				<textarea class="form-control" rows="5"></textarea>
			</div>
		</div>
		<br>
		<br>