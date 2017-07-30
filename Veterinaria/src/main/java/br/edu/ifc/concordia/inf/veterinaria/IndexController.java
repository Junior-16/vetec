package br.edu.ifc.concordia.inf.veterinaria;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.controller.UserController;


@Controller
public class IndexController extends AbstractController {
	
	
	
	@NoCache
	@Path(value="/", priority=Path.HIGHEST)
	public void index() {
		if(this.userSession.isLogged() == true) {
			
		}else {
			this.result.redirectTo(UserController.class).login(0,null);
		}
	}
}

		
	


