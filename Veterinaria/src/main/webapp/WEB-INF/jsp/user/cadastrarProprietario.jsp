 <%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
	<form id = "cadastrarProprietario" method="post" action="<c:url value="/cadastrarproprietario"/>">
		<div class="row">
			<div class="col-md-4">
				<label>Nome do Proprietário</label>
                <input class="form-control" id="nome">
			</div>
			<div class="col-md-2" >
				<label>Cep</label>
                <input type="text" id="cep" class="form-control" maxlength="10" id="cep" placeholder="xxxxx-xxx">
			</div>
			<div class="col-md-3">
				<label>CPF</label>
                <input class="form-control" id="cpf" id="cpf" maxlength="14" placeholder="xxx.xxx.xxx-xx">
			</div>
			<div class="col-md-3">
				<label>Telefone</label>
                <input class="form-control" id="telefone" id="telefone" placeholder="(xx) x xxxxx-xxxx">
			</div>
			<div class="col-md-6">
				<label>Profissão</label>
                <input class="form-control" id="profissao">
                <label>Endereço</label>
	            <textarea class="form-control" id="endereco" id="exampleTextarea" rows="2"></textarea>
			</div>
			<div class="col-md-6">
				<label>Referências</label>
                <textarea class="form-control" id="referencias" id="exampleTextarea" rows="6"></textarea>   
			</div>
		</div>
		<div class="cadastrarProprietario" data-toggle="tooltip" data-placement="top" title="" data-original-title="Cadastar"><span id="icon-save" class="glyphicon glyphicon-ok"></span></div>
	</form>
	</div>
<c:import url="/includes/footer.jsp" />

