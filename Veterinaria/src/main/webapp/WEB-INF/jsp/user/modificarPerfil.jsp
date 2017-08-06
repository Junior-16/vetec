<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp" />
<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<form method="POST" action="<c:url value="/modificarPerfil"/>">
		<c:if test="${not empty modificarperfil}">
			<div class="row container-fluid">
				<div class=col-md-3>
					<label>Nome </label> <input class="form-control" name="nome"
						value="<c:url value="${modificarperfil.nome}"/>">
				</div>
				<div class=col-md-2>
					<label>CEP</label> <input class="form-control" name="cep"
						value="<c:url value="${modificarperfil.cep}"/>" id="cep">
				</div>
				<div class=col-md-2>
					<label>CPF</label> <input class="form-control" name="cpf" id="cpf"
						value="<c:url value="${modificarperfil.cpf}"/>">
				</div>
				<div class=col-md-2>
					<label>Telefone</label> <input class="form-control" id="telefone"
						name="telefone"
						value="<c:url value="${modificarperfil.telefone}"/>">
				</div>
				<div class="col-md-2">
					<label>CRMV</label> <input class="form-control" name="crmv"
						value="<c:url value="${modificarperfil.crmv}"/>">
				</div>
				<div class="col-md-4">
					<label>Especialidade</label> <input class="form-control"
						name="especialidade"
						value="<c:url value="${modificarperfil.especialidade}"/>">
				</div>
				<div class="col-md-3">
					<label>Endereço</label> <input class="form-control" name="endereco"
						value="<c:url value="${modificarperfil.endereco}"/>">
				</div>
				<div class="col-md-4">
					<label>Estudo</label> <input class="form-control" name="estudo"
						value="<c:url value="${modificarperfil.estudo}"/>">
				</div>
				<div class="col-md-3">
					<label>Email</label><input class="form-control" name="email"
						value="<c:url value="${modificarperfil.email}"/>">
				</div>
				<!--  
					<div class="col-md-3">
						<label>Senha (mínimo 5 caracteres)</label>
		                <input class="form-control" name = "password" type="password" minlength="5" maxlength="10">
					</div> -->
				<div class="col-md-4">
					<button type="submit" class="btn btn-success">Modificar</button>
				</div>
			</div>
		</c:if>
	</form>
</div>
<c:import url="/includes/footer.jsp"/>