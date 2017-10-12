<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headerInitial.jsp"/>
	<div class="loginContent">
			<div class="row">
				<div class="col-md-12">
					<div class="panel-heading">
		               <div class="panel-title text-center">
		               		<h1 class="title">Clínica Veterinária IFC - Concórdia</h1>
		               	</div>
		             
						<div class="main-login main-center">
							<form class="form-horizontal" method="post" action="<c:url value="/login" />">
								<div class="form-group">
									<label for="name" class="cols-sm-2 control-label">Username</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="username" id="name"  placeholder="Enter your Name"/>
										</div>
									</div>
								</div>
	
								<div class="form-group">
									<label for="password" class="cols-sm-2 control-label">Password</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
											<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
										</div>
									</div>
								</div>
	
								<div class="form-group ">
									<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Login</button>
								</div>
								<div class="login-register">
					            	<a href="<c:url value="/recuperarSenha"/>">Esqueci minha senha</a>
					         	</div>
					         	<c:if test="${not empty errorMsg}">
									<div class="alert alert-danger" role="alert">
										<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
										<span class="sr-only"></span>
										${errorMsg}
									</div>
								</c:if>
								<c:if test="${not empty gotout}">
									<div class="alert alert-success" role="alert">
									  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
										<span class="sr-only"></span>
										${gotout}
									</div>
								</c:if>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<c:import url="/includes/footer.jsp" />