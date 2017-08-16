<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headerInitial.jsp"/>

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
			    	<button type="submit" class="btn btn-success" type="button" id = "submit">Entrar</button>
				</div>
				<div class="col-md-8">
			        <a href="#">Esqueci minha senha</a></br>
			    </div>
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
		</div>
		<div class="col-md-4">
		</div>
	</div>
	</div>
</form>
<c:import url="/includes/footer.jsp"/>