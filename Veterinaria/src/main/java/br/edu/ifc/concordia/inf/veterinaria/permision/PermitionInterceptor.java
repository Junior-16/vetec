package br.edu.ifc.concordia.inf.veterinaria.permision;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.boilerplate.interceptor.HeadersInterceptor;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.edu.ifc.concordia.inf.veterinaria.UserSession;
import br.edu.ifc.concordia.inf.veterinaria.controller.UserController;

@RequestScoped
@Intercepts(after=HeadersInterceptor.class)
@AcceptsWithAnnotations(Permition.class)
public class PermitionInterceptor {

	@Inject private UserSession userSession;
	@Inject private HttpServletResponse httpResponse;
	@Inject private Result result;
	@Inject private ControllerMethod method;
	
	@AroundCall
	public void intercept(SimpleInterceptorStack stack) {
		if (!this.userSession.isLogged()) {
			this.result.redirectTo(UserController.class).login(0,null);
		} else if (this.userSession.getUser().getAcesso() >= UserRoles.NORMAL.getAccessLevel()) {
			stack.next();
		} else {
			Permition perm = this.method.getMethod().getAnnotation(Permition.class);
			if (this.userSession.getUser().getAcesso() >= perm.value().getAccessLevel()) {
				stack.next();
			} else {
				this.httpResponse.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				this.result.nothing();
			}
		}
	}
}
