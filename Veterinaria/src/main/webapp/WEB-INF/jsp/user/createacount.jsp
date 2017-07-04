<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

	<div class="container-fluid conteudo">
	<!--nav navigation-->
	<c:import url="/includes/navbar.jsp" />
	<form method="POST" action="<c:url value="/createacount"/>" >
		<div class="row formulario">
				<div class="col-md-3">
					<label>Nome de Usuário</label>
	                <input class="form-control" name = "username">
				</div>
				<div class="col-md-2" >
					<label>Senha</label>
	                <input class="form-control" name = "password" type="password" maxlength="10">
				</div>
				<div class="col-md-3">
					<label>CPF</label>
	                <input class="form-control" id="cpf" maxlength="14" name="cpf">
	                <label>Cep</label>
	                <input type="text" class="form-control" maxlength="10" id="cep" name="cep">
				</div>
				<div class="col-md-3">
					<label>Telefone</label>
	                <input class="form-control" id="telefone" maxlength="11" name = "telefone">
				</div>
				<div class="col-md-6">
					<label>Profissão</label>
	                <input class="form-control" name="profissao">
	                <label>Endereço</label>
		            <textarea class="form-control" id="exampleTextarea" rows="2" name="endereco"></textarea>
		            <label>Nome do Proprietário</label>
	                <input class="form-control" name = "nome">
				</div>
				<div class="col-md-6">
					<label>Referências</label>
	                <textarea class="form-control" id="exampleTextarea" rows="6" name="referencias"></textarea>
	                <button type="submit" class="btn btn-success">Salvar</button>
				</div>
			</div>
		</form>
	</div>
<c:import url="/includes/footer.jsp"/>