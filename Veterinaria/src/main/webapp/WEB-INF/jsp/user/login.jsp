<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

<form method="POST" action="<c:url value="/login" />" >
 	<div class="container-fluid conteudo">
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-3">
			<c:if test="${not empty errorMsg}">
				<div class="alert alert-danger" role="alert">
					<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					<span class="sr-only">Error:</span>
					Nome de Usuário ou Senha Incorretos
				</div>
			</c:if>
			<div class="login">
		      	<div class="login1">
		      		<h2>Login</h2>
		      	</div>
		      	<div class="container-fluid">
			      	<input class="form-control" placeholder="User Name"  name="login" id= "username">
			      	<input class="form-control" name="password" type="password" placeholder="Password" id= "password">
			    </div>
			    <div class="col-md-12">
			      	<button type="submit" class="btn btn-default btn-md" id = "submit">Login
					</button>
				</div>
				<div class="col-md-6">
			        <a href="#">Esqueci minha senha</a></br>
			      	<a  href="<c:url value="/createacount"/>">Criar uma conta</a>
			    </div>
		    </div>
		</div>
		<div class="col-md-4">
		</div>
	</div>
	</div>
</form>
<c:import url="/includes/footer.jsp"/>