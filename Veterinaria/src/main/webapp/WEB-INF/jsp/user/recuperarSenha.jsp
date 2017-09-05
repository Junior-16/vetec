<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headerInitial.jsp"/>
	<div class="container">
		<form method="POST" action="<c:url value="/recuperarSenha"/>">
			<div class="row">
				<div class="col-md-4">
					<div class="input-group">
						<input type="text" class="form-control" name="email"   placeholder="Digite seu email de recuperação"/>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group ">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Enviar</button>
					</div>
				</div>
			</div>
		</form>
	</div> 
<c:import url="/includes/footer.jsp" />