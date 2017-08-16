<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

	<div class="container-fluid conteudo">
	<!--nav navigation-->
	<c:import url="/includes/navigation.jsp" />
	<form method="POST" action="<c:url value="/createacount"/>">
		<div class="row container-fluid">
			<div class="formulario">
				<div class="formulario">
					<div class="col-md-3">
						<label>Nome </label> <input class="form-control" name="nome">
					</div>
					<div class="col-md-2">
						<label>CEP</label> <input class="form-control" name="cep" id="cep"
							placeholder="xxxxx-xxx" maxlength="9">
					</div>
					<div class="col-md-2">
						<label>CPF</label> <input class="form-control" name="cpf" id="cpf"
							placeholder="xxx.xxx.xxx-xx" maxlength="14">
					</div>
					<div class="col-md-2">
						<label>Telefone</label> <input class="form-control" id="telefone"
							name="telefone" placeholder="(xx) x xxxx-xxxx" maxlength="16">
					</div>
					<div class="col-md-2">
						<label>CRMV</label> <input class="form-control" name="crmv">
					</div>
					<div class="col-md-4">
						<label>Especialidade</label> <input class="form-control"
							name="especialidade">
					</div>
					<div class="col-md-3">
						<label>Endereço</label> <input class="form-control"
							name="endereco">
					</div>
					<div class="col-md-4">
						<label>Estudo</label> <input class="form-control" name="estudo">
					</div>
					<div class="col-md-4">
						<label>Email</label> <input class="form-control" name="email">
					</div>
					<div class="col-md-2">
						<label>Nome de Usuário</label> <input class="form-control"
							name="username">
					</div>
					<div class="col-md-3">
						<label>Senha (mínimo 5 caracteres)</label> <input
							class="form-control" name="password" type="password"
							minlength="5" maxlength="10">
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<button type="submit" class="btn btn-success">Cadastrar</button>
			</div>
		</div>
	</form>
</div>
<c:import url="/includes/footer.jsp"/>