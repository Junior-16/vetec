<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headerInitial.jsp"/>
	<div class="loginContent">
			<div class="row">
				<div class="col-md-12">
					<div class="panel-heading">
		               <div class="panel-title text-center">
		               		<h1 class="title">Clínica Veterinaria IFC - Concórdia</h1>
		               	</div>
		             
						<div class="main-login main-center">
							<form class="form-horizontal" method="post" action="<c:url value="/recuperarSenha" />">
								<div class="form-group">
									<label for="name" class="cols-sm-2 control-label">Email</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="email" id="name"  placeholder="Digite seu e-mail"/>
										</div>
									</div>
								</div>
	
								<div class="form-group">
									<label for="password" class="cols-sm-2 control-label">Username</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
											<input type = "text" class="form-control" name="username"  placeholder="Digite seu nome de usuário"/>
										</div>
									</div>
								</div>
	
								<div class="form-group ">
									<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Recuperar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</div> 

<c:import url="/includes/footer.jsp" />