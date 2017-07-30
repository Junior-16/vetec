<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp" />

	<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp"/>
		<div class="container-fluid row">
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
	                    	<li>
	                    		<a class = "proprietario" href="#" onclick="mostrar($found);">${found.nome}</a>
	                    		<a href="#" class="animais1">Nome do Cachorro</a>
			                    <a href="#" class="animais1">Mintsie</a>
	                    	</li>
						</c:if>			
	                    <li class="nav-divider"></li>
	                </ul>
	            </nav>
	        </div>		
	        <div class="col-md-9">
	        	<div class="jumbotron row" style="padding-left:0px; padding-right:0px; padding:0px;">
	        	<c:if test="${not empty found1}">
				  	<div class="col-md-3">
				  		<label>Nome</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.nome}
						  </div>
						</div>
						<label>CEP</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.cep}
						  </div>
						</div>
				  	</div>
				  	<div class="col-md-3">
				  		<label>CPF</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.cpf}
						  </div>
						</div>
						<label>Telefone</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.telefone}
						  </div>
						</div>
				  	</div>
				  	<div class="col-md-3">
				  		<label>CPF</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.profissao}
						  </div>
						</div>
						<label>Telefone</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.endereco}
						  </div>
						</div>
				  	</div>
				  	<div class="col-md-3">
				  		<label>Referências</label>
				  		<div class="panel panel-sm">
						  <div class="panel-body">
						    ${found1.referencias}
						  </div>
						</div>
				  	</div>
				</c:if>
				</div>
	        </div>    
		</div>
	</div>
<c:import url="/includes/footer.jsp" />