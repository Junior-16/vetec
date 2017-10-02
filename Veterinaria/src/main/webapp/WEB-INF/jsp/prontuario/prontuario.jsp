<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/includes/headers.jsp" />
<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp" />
	<div class="container-fluid row conteudo">
		<!-- Barra de Pesquisa-->
	        <!-- Tabs -->
	        <div class="col-md-12 col-sm-12">
				<ul class="nav nav-tabs">
					<li role="presentation" class = "active"><a href="#infoGerais" data-toggle="tab" >Informações Gerais</a></li>
					<li role="presentation"><a href="#anamneseGeral" data-toggle="tab">Anamnese Geral</a></li>
					<li role="presentation"><a href="#anamneseEspecial" data-toggle="tab">Anamnese Especial</a></li>
					<li role="presentation"><a href="#exameFisico" data-toggle="tab" id = "exame">Exame Físico</a></li>
					<li role="presentation"><a href="#tab5" data-toggle="tab" id = "complementares">Exames Complementares</a></li>
					<li role="presentation"><a href="#resultados" data-toggle="tab" id = "resultado">Resultados</a></li>
					<li role="presentation" class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
					      Retorno <span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
						<li><a href="#exameFisicoRetorno" data-toggle="tab"
							class="Linkretorno">Exame Físico / Anamnese</a></li>
						<li><a href="#examComplRetorno" data-toggle="tab"
							class="Linkretorno">Exames Complementares</a></li>
						<li><a href="#resultadosRetorno" data-toggle="tab"
							class="Linkretorno">Resultados</a></li>

					</ul>
  					</li>
				</ul>
				<!-- Tabs content -->
				<div class="tab-content">
						<div class="tab-pane fade" id="tab1">
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
						<div class="tab-pane fade  active in" id="infoGerais">
							<c:import url="/includes/prontuarioIncludes/infoGeraisShow.jsp"/>
						</div>
						<div class="tab-pane fade" id="anamneseGeral">
							<c:import url="/includes/prontuarioIncludes/anamneseGeralShow.jsp"/>
						</div>
						<div class="tab-pane fade" id="anamneseEspecial">
							<c:import url="/includes/prontuarioIncludes/anamneseEspecialShow.jsp"/>
						</div>
						<div class="tab-pane fade" id="exameFisico">
							<c:import url="/includes/prontuarioIncludes/ExameFisicoShow.jsp"/>
						</div>
						<div class="tab-pane fade" id="resultados">
							<c:import url="/includes/prontuarioIncludes/resultadosShow.jsp"/>
						</div>
						<div class="tab-pane fade" id="exameFisicoRetorno">
							<c:import url="/includes/prontuarioIncludes/exameFisicoRetorno.jsp"/>
						</div>
						<div class="tab-pane fade" id="examComplRetorno">
							<c:import url="/includes/prontuarioIncludes/examComplRetorno.jsp"/>
						</div>
						<div class="tab-pane fade" id="resultadosRetorno">
							<c:import url="/includes/prontuarioIncludes/resultadosRetorno.jsp"/>
						</div>
				</div>
		</div>
	</div>

</div>

<c:import url="/includes/footer.jsp" />