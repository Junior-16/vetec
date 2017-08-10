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

@Intercepts(after=HeadersInterceptor.class)
@RequestScoped
@AcceptsWithAnnotations(Permition.class)
public class PermissionInterceptor {
	@Inject private UserSession userSession;
	@Inject private HttpServletResponse httpResponse;
	@Inject private ControllerMethod method;
	@Inject private Result result;
	
	@AroundCall
	public void intercept(SimpleInterceptorStack Stack) {
		if(!this.userSession.isLogged()) {
			this.result.redirectTo(UserController.class).login(0,null);
		}else if (this.userSession.getLoggedUser().getAcesso() >= UserRoles.ADMIN.getAccessLevel()){
			Stack.next();
		}else {
			Permition perm = this.method.getMethod().getAnnotation(Permition.class);
			if (this.userSession.getLoggedUser().getAcesso() > perm.value().getAccessLevel()) {
				this.userSession.setPermitir(true);
				Stack.next();
			} else {
				this.userSession.setPermitir(false);
				this.httpResponse.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				this.result.nothing();
			}
		}
	}
}
