<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
				<li><a class="proprietario"> <span
						class="glyphicon glyphicon-chevron-down" id="${found.id}"></span>
						<h6  href="<c:url value="proprietario/${found.nome}"/>" >${found.nome}</h6>
				</a> <c:if test="${not empty found.animais}">
						<c:forEach items="${found.animais}" var="animais">
							<a class="${found.id}"
								href="<c:url value="/prontuario/${animais.nome}"/>"
								style="margin-left: 10px;">${animais.nome}</a>
						</c:forEach>
					</c:if>
					</li>
			</c:forEach>
		</c:if>
		<li><a href="<c:url value="/cadastrarAnimal"/>"> <span
				class="glyphicon glyphicon-plus"></span> Cadastrar Animal
		</a></li>
		<li class="nav-divider"></li>
	</ul>
</nav>
