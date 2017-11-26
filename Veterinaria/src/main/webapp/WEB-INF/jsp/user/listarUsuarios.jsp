<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />
<div class="container-fluid conteudo">
	<c:if test="${not empty permition}">
		<c:if test="${permition.acesso == 2}">
			<c:import url="/includes/navigation.jsp" />
		</c:if>
		<c:if test="${permition.acesso == 1}">
			<c:import url="/includes/navigationNormal.jsp" />
		</c:if>
	</c:if>
	<div class="container-fluid">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Telefone</th>
					<th>CPF</th>
					<th>CEP</th>
					<th>Endereço</th>
					<th>Email</th>
					<th>CRMV</th>
					<th>Especialidade</th>
					<th>Estudo</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty userList}">
					<c:forEach items="${userList}" var="userList">
						<tr>
							<th scope="row">${userList.id}</th>
							<td>${userList.nome}</td>
							<td>${userList.telefone}</td>
							<td>${userList.cpf}</td>
							<td>${userList.cep}</td>
							<td>${userList.endereco}</td>
							<td>${userList.email}</td>
							<td>${userList.crmv}</td>
							<td>${userList.especialidade}</td>
							<td>${userList.estudo}</td>
							<td>
								<c:if test="${not empty admin}">
									<a href="<c:url value="removerUser/${userList.id}"/>">
										<span class="glyphicon glyphicon-remove"></span>
									</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
	</div>
<c:import url="/includes/footer.jsp" />