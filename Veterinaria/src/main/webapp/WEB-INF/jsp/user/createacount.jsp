<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

	<div class="container-fluid conteudo">
	<!--nav navigation-->
	<c:import url="/includes/navbar.jsp" />
	<form method="POST" action="<c:url value="/createacount"/>" >
		<div class="row container">
			<div class="formulario">
					<div class="col-md-3">
						<label>Nome </label>
		                <input class="form-control" name = "nome">
		                <label>Especialidade</label>
		                <input class="form-control" name = "especialidade">
		                <label>Estudo</label>
		                <input class="form-control" name = "estudo">
					</div>
					<div class="col-md-2">
						<label>Telefone</label>
		                <input class="form-control"  id = "telefone" name = "telefone">
		                <label>Endereço</label>
		                <input class="form-control" name = "endereco">  
						<label>CRMV</label>
		                <input class="form-control" name = "">            
					</div>
					<div class="col-md-2">
		                <label>CEP</label>
		                <input class="form-control" name = "cep" id="cep">
		                <label>CPF</label>
		                <input class="form-control" name = "cpf" id="cpf">
		                <label>Nome de Usuário</label>
		                <input class="form-control" name = "username">    
					</div>
					<div class="col-md-3">
						<label>Senha (mínimo 5 caracteres)</label>
		                <input class="form-control" name = "cpf" id="cpf">
		                <button type="submit" class="btn btn-success">Cadastrar</button>
					</div>
			</div>
			</div>
		</form>
	</div>
<c:import url="/includes/footer.jsp"/>