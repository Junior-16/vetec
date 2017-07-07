<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/headers.jsp" />

	<div class="container-fluid conteudo">
	<c:import url="/includes/navigation.jsp"/>
		<h5>Esta é a Home</h5>
		<form method = "POST" action='<c:url value = "/logout"/>'>
			<button >Log Out
			</button>
		</form>
	</div>
<c:import url="/includes/footer.jsp" />
