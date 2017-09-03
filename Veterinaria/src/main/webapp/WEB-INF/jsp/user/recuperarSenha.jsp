<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headerInitial.jsp"/>
	<div class="container">
			<div class="row">
				<div class="panel-heading">
					<div class="panel-title text-center">
	               		<h1 class="title">Clínica Veterinaria IFC - Concórdia</h1>
	               		<hr />
	               	</div>
					<div class="main-login main-center">
						<form method="POST" action="<c:url value="/recuperarSenha"/>">
							<div class="cols-sm-10">
								<div class="form-group">
									<label for="name" class="cols-sm-2 control-label">Email</label>
									<div class="input-group">
										<input type="text" class="form-control" name="email"   placeholder="Digite seu email de recuperação"/>
									</div>
									<label for="name" class="cols-sm-2 control-label">Username</label>
									<div class="input-group">
										<input type="text" class="form-control" name="username"   placeholder="Digite seu nome de usuário"/>
									</div>
								</div>
								<div class="form-group ">
									<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Enviar</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
<c:import url="/includes/footer.jsp" />