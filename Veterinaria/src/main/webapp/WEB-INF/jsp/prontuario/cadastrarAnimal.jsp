<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<div class="container-fluid">
<div class="row">
	<div class="container-fluid">
			<div class="col-md-3">
				<label>Nome do Animal</label> <input class="form-control">
				<label>Raça</label> <input class="form-control">
			</div>
			<div class="col-md-3">
				<label>Espécie</label><input class="form-control">
			</div>
			<div class="col-md-6" style="display:none;">
				<label>Espécie</label><input class="form-control">
			</div>
			<div class="col-md-7" style="display:none;">
				<label>Espécie</label><input class="form-control">
			</div>
			<div class="col-md-2">
				<label>Idade</label> <input class="form-control">
			</div>
			<div class="col-md-2">
				<label>Peso</label><input class="form-control">
			</div>
			<div class="col-md-2">
				<label>Sexo</label>
				<select class="form-control">
					<option>feminino</option>
					<option>Masculino</option>
				</select>
			</div>
			<div class="col-md-3">
				<label>Informações Complementares</label>
				<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
			</div>
		</div>
	</div>>
	</div>
</div>

<c:import url="/includes/footer.jsp" />