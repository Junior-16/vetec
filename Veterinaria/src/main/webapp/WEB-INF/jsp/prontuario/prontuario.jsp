<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />
<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	
	<div class="container-fluid row">
		<!-- Barra de Pesquisa-->
	        <!-- Tabs -->
	        <div class="col-md-12 col-sm-12">
				<ul class="nav nav-tabs">
					<li class = "active"><a href="infoGerais" data-toggle="tab" >Informações Gerais</a></li>
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
							<c:import url="/includes/prontuarioIncludes/infoGerais.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab2">
							<c:import url="/includes/prontuarioIncludes/anamneseGeral.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab3">
							<c:import url="/includes/prontuarioIncludes/anamneseEspecial.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab4">
							<c:import url="/includes/prontuarioIncludes/exameFisico.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab5">
							<c:import url="/includes/prontuarioIncludes/examesComplementares.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab6">
							<c:import url="/includes/prontuarioIncludes/resultados.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab7">
							<c:import url="/includes/prontuarioIncludes/tratamento.jsp"/>
						</div>
						<div class="tab-pane fade" id="tab8">
							<h5>Ainda não decidi o que vou por aqui</h5>
						</div>
						<div class="tab-pane fade" id="infoGerais">
							<c:import url="/includes/prontuarioIncludes/infoGeraisShow.jsp"/>
						</div>
				</div>
		</div>
	</div>

</div>

<c:import url="/includes/footer.jsp" />