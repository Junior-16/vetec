<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/AgendaHeader.jsp" />

	<div class="container-fluid conteudo">
	<c:if test="${not empty permition}">
		<c:if test="${permition.acesso == 2}">
			<c:import url="/includes/navigation.jsp" />
		</c:if>
		<c:if test="${permition.acesso == 1 }">
			<c:import url="/includes/navigationNormal.jsp" />
		</c:if>
	</c:if>
		<h2 id = "date"></h2>
		<table class="tabela">
			<thead>
				<th>Dom</th>
				<th>Seg</th>
				<th>Ter</th>
				<th>Qua</th>
				<th>Qui</th>
				<th>Sex</th>
				<th>Sab</th>
			</thead>
		</table>
		<div class="modal fade bs-example-modal-md" id = "modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-md" role="document">
		    <div class="modal-content">
		    	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title">Agendamento</h4>
			    </div>
		    	<div class="modal-body">
		    		<div class="row">
		    		
		    		</div>
		    	</div>
		    	<div class="modal-footer">
		    		<button type='button' id = 'newTask' class='btn btn-default'><span class='glyphicon glyphicon-plus'></span></button>
		    		<button type="button" id = "salvar" class="btn btn-primary">Salvar</button>
		    	</div>
		    </div>
		  </div>
		</div>
	</div>
	<c:import url="/includes/footer.jsp"/>