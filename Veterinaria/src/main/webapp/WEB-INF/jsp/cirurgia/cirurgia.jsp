<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />
<div class="container-fluid conteudo">
	<!-- Eu coloquei essa verificação pra ver qual navbar ele inclui por causa no usernormal e admin -->
	<c:if test="${not empty permition}">
		<c:if test="${permition.acesso == 2}">
			<c:import url="/includes/navigation.jsp" />
		</c:if>
		<c:if test="${permition.acesso == 1}">
			<c:import url="/includes/navigationNormal.jsp" />
		</c:if>
	</c:if>
	
	<div class="container-fluid row">
	        <!-- Tabs -->
	        <div class="col-md-12">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1" data-toggle="tab">Ficha anestésica</a></li>
					<li><a href="#tab2" data-toggle="tab">Ficha de Internação</a></li>
					<li><a href="#tab3" data-toggle="tab">Alta Médica</a></li>
					<li><a href="#tab4" data-toggle="tab">Autorização Anestésica</a></li>
					<li><a href="#tab5" data-toggle="tab">Autorização Cirúrgica</a></li>
					<li><a href="#tab6" data-toggle="tab">Descrição de Cirurgia</a></li>
					<li><a href="#tab7" data-toggle="tab">Procedimento Terapêutico</a></li>
				</ul>
				<!-- Tabs content -->
				<div class="tab-content">
					<div class="tab-pane fade" id="tab1">
						<c:import url="/includes/cirurgia/fichaAnestesica.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab2">
						<c:import url="/includes/cirurgia/fichaInternacao.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab3">
						<c:import url="/includes/cirurgia/altaMedica.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab4">
						<c:import url="/includes/cirurgia/proceAnestesico.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab5">
						<c:import url="/includes/cirurgia/tratCirurgico.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab6">
						<c:import url="/includes/cirurgia/descricaoCirurgia.jsp"/>
					</div>
					<div class="tab-pane fade" id="tab7">
						<c:import url="/includes/cirurgia/altaMedica.jsp"/>
					</div>
				</div>
				<div id = "save" data-toggle="tooltip" data-placement="top" title="Salvar"><span class="glyphicon glyphicon-ok" id="icon-save"></span></div>
		</div>
	</div>

</div>

<c:import url="/includes/footer.jsp" />