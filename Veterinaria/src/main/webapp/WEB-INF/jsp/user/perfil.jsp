<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

	<div class="container-fluid conteudo">
	<!--nav navigation-->
	<c:import url="/includes/navigation.jsp" />
	<div class="jumbotron">
		<div class = "row">
		<c:if test="${not empty teste }">
			<h5>${teste}</h5>
		</c:if>
		<c:if test="${not empty perfil}">
				  	<div class="col-md-3">
				  		<label>Nome</label>
				  		<div class="well well-sm">
						    ${perfil.nome}
						</div>
				  	</div>
				  	<div class="col-md-2">
				  		<label>CPF</label>
				  		<div class="well well-sm">
						    ${perfil.cpf}
						</div>
				  	</div>
				  	<div class="col-md-2">
				  		<label>CEP</label>
				  		<div class="well well-sm">
						    ${perfil.crmv}
						</div>
				  	</div>
				  	<div class="col-md-2">
				  	<label>Telefone</label>
				  		<div class="well well-sm">
						    ${perfil.estudo}
						</div>
					</div>
				  	<div class="col-md-4">
				  		<label>Profissão</label>
				  		<div class="well well-sm">
						    ${perfil.cep}
						</div>
				  	</div>
				  	<div class="col-md-3">
				  		<label>Endereço</label>
				  		<div class="well well-sm">
						    ${perfil.telefone}
						</div>
				  	</div>
				  	<div class="col-md-4">
				  	<label>Especialidade</label>
				  		<div class="well well-sm">
						    ${perfil.especialidade}
						</div>
				  	</div>
				  	<div class="col-md-4">
				  	<label>Referências</label>
				  		<div class="well well-sm">
						    ${perfil.endereco}
						</div>
				  	</div>
			</c:if>
			</div>
		</div>
	</div>
	<c:import url="/includes/footer.jsp"/>