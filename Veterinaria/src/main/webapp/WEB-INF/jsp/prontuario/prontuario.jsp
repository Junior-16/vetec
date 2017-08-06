<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />
<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	
	<div class="container-fluid row">
		<!-- Barra de Pesquisa-->
		<div class="col-md-3">
	            <nav class="nav-sidebar">
	                <ul class="nav">
	                	<c:if test="${not empty notfound}">
							<div class="alert alert-danger" role="alert" style="padding:5px; margin-bottom:10px;">
								<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
								<span class="sr-only"></span>
								${notfound}
							</div>
						</c:if>
	                    <li class="active">
	                    	<form method="post" action="<c:url value="/search"/>">
		                    	<input class="form-control" name = "proprietario" placeholder = "Pesquisar proprietario/animal" style="display:inline; width:85%;">
		                    	<button type="submit" class="btn btn-default btn-md" id="buscar">
		                        <span class="glyphicon glyphicon-search"></span>
		                        </button>
	                        </form>
	                    </li>
	                    <c:if test="${not empty found}">
		                    <c:forEach items="${found}" var="found">
		                    	<li>
		                    		<a class = "proprietario" href="#">${found.nome}</a>
		                    		<a href="#" class="<c:url value="${found.id}"/>">Nome do Cachorro</a>
				                    <a href="#" class="<c:url value="${found.id}"/>">Mintsie</a>
		                    	</li>
		                    </c:forEach>
						</c:if>			
	                    <li class="nav-divider"></li>
	                </ul>
	            </nav>
	        </div>
	        <!-- Tabs -->
	        <div class="col-md-9 col-sm-9">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1" data-toggle="tab">Informações
							Gerais</a></li>
					<li><a href="#tab2" data-toggle="tab">Anamnese Geral</a></li>
					<li><a href="#tab3" data-toggle="tab">Anamnese Especial</a></li>
					<li><a href="#tab4" data-toggle="tab">Exame Físico</a></li>
					<li><a href="#tab5" data-toggle="tab">Exames Complementares</a></li>
					<li><a href="#tab6" data-toggle="tab">Resultados</a></li>
					<li><a href="#tab7" data-toggle="tab">Tratamento</a></li>
					<li><a href="#tab8" data-toggle="tab">Retorno</a></li>
				</ul>
				<!-- Tabs content -->
				<div class="tab-content">
					<div class="tab-pane active in" id="tab1">
						<c:import url="/includes/prontuario/infoGerais.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab2">
						<c:import url="/includes/prontuario/anamneseGeral.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab3">
						<c:import url="/includes/prontuario/anamneseEspecial.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab4">
						<c:import url="/includes/prontuario/exameFisico.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab5">
						<c:import url="/includes/prontuario/examesComplementares.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab6">
						<c:import url="/includes/prontuario/resultados.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab7">
						<c:import url="/includes/prontuario/tratamento.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab8">
						<h5>Ainda não decidi o que vou por aqui</h5>
					</div>
				</div>
				<div id ="save" data-toggle="tooltip" data-placement="top" title="Salvar"><span class="glyphicon glyphicon-ok"></span></div>
		</div>
	</div>

</div>

<c:import url="/includes/footer.jsp" />