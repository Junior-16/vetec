<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp"/>

<form method="POST" action="<c:url value="/login" />" >
 	<div class="container conteudo">
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<div class="login" style="height:290px">
					<div>
		      			<img src="<c:url value="/imagens/barralogin.png"/>"></img>
		      		</div>
		      		<div class="container-fluid">
				      <input class="form-control" placeholder="User Name"  name="username" id= "username">
				      <input class="form-control" name="password" type="password" placeholder="Password" id= "password">
				     </div>
			    <div class="col-md-12">
			      	<button type="submit" class="btn btn-default btn-md" id = "submit">Login
					</button>
				</div>
				<div class="col-md-8">
			        <a href="#">Esqueci minha senha</a></br>
			      	<a  href="<c:url value="/createacount"/>">Criar uma conta</a>
			    </div>
		    </div>
		    <c:if test="${not empty errorMsg}">
				<div class="alert alert-danger" role="alert">
					<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					<span class="sr-only"></span>
					${errorMsg}
				</div>
			</c:if>
		</div>
		<div class="col-md-4">
		</div>
	</div>
	</div>
</form>
<c:import url="/includes/footer.jsp"/>