<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<div class="container-fluid row">
		<div class="col-md-3">
			<nav class="nav-sidebar">
				<ul class="nav">
					<c:if test="${not empty notfound}">
						<div class="alert alert-danger" role="alert"
							style="padding: 5px; margin-bottom: 10px;">
							<span class="glyphicon glyphicon-exclamation-sign"
								aria-hidden="true"></span> <span class="sr-only"></span>
							${notfound}
						</div>
					</c:if>
					<li class="active">
						<form method="post" action="<c:url value="/search"/>">
							<input class="form-control" name="proprietario"
								placeholder="Pesquisar proprietario"
								style="display: inline; width: 85%;">
							<button type="submit" class="btn btn-default btn-md" id="buscar">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</form>
					</li>
						<c:if test="${not empty found}">
							<c:forEach items="${found}" var="found">
								<li>
									<a href="#">${found.nome}</a>
									<c:if test="${not empty found.animais}">
										<c:forEach items="${found.animais}" var="animais">
											<a href="#">${animais.nome}</a>
										</c:forEach>
									</c:if>
								</li>
							</c:forEach>
						</c:if>
					<li>
						<a href="<c:url value="/cadastrarAnimal"/>"> <span class="glyphicon glyphicon-plus"></span>Cadastrar
							Animal
						</a>
					</li>
					<li class="nav-divider"></li>
				</ul>
			</nav>
		</div>
		<div class="col-md-9 dadosProp" style="display: none;">
			<div class="jumbotron row"
				style="padding-left: 0px; padding-right: 0px; padding: 0px;">
				<c:forEach items="${found1}" var="found1">
					<div class="col-md-3">
						<label>Nome</label>
						<div class="well well-sm">${found1.nome}</div>
					</div>
					<div class="col-md-2">
						<label>CPF</label>
						<div class="well well-sm">${found1.cpf}</div>
					</div>
					<div class="col-md-2">
						<label>CEP</label>
						<div class="well well-sm">${found1.cep}</div>
					</div>
					<div class="col-md-2">
						<label>Telefone</label>
						<div class="well well-sm">${found1.telefone}</div>
					</div>
					<div class="col-md-4">
						<label>Profissão</label>
						<div class="well well-sm">${found1.profissao}</div>
					</div>
					<div class="col-md-3">
						<label>Endereço</label>
						<div class="well well-sm">${found1.endereco}</div>
					</div>
					<div class="col-md-4">
						<label>Referências</label>
						<div class="well well-sm">${found1.referencias}</div>
					</div>
				</c:forEach>
			</div>
			<button type="button" class="btn btn-info">
				Modificar <span class="glyphicon glyphicon-edit"></span>
			</button>
			<button type="button" class="btn btn-warning">
				Cadastrar Animal <span class="glyphicon glyphicon-plus"></span>
			</button>
		</div>
	</div>
</div>
<c:import url="/includes/footer.jsp" />