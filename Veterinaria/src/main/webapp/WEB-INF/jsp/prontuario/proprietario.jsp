<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />

<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<div class="container-fluid row">
		<div class="col-md-3">
			<c:import url="/includes/buscar.jsp"/>
		</div>
		<div class="col-md-9">
			<div class="jumbotron">
				<div class="row">
					<c:if test="${not empty proprietarioInfo}">
						<div class="col-md-3">
							<label>Nome</label>
							<div class="well well-sm">${proprietarioInfo.nome}</div>
						</div>
						<div class="col-md-3">
							<label>CPF</label>
							<div class="well well-sm">${proprietarioInfo.cpf}</div>
						</div>
						<div class="col-md-3">
							<label>CEP</label>
							<div class="well well-sm">${proprietarioInfo.cep}</div>
						</div>
						<div class="col-md-3">
							<label>Telefone</label>
							<div class="well well-sm">${proprietarioInfo.telefone}</div>
						</div>
						<div class="col-md-4">
							<label>Profissão</label>
							<div class="well well-sm">${proprietarioInfo.profissao}</div>
						</div>
						<div class="col-md-4">
							<label>Endereço</label>
							<div class="well well-sm">${proprietarioInfo.endereco}</div>
						</div>
						<div class="col-md-4">
							<label>Referencias</label>
							<div class="well well-sm">${proprietarioInfo.referencias}</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
<c:import url="/includes/footer.jsp" />