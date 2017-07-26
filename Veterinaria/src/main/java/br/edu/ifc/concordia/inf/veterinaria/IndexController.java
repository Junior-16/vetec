package br.edu.ifc.concordia.inf.veterinaria;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.controller.UserController;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;

@Controller
public class IndexController extends AbstractController {
	
	
	@Path(value="/", priority=Path.HIGHEST)
	@NoCache
	@Permition
	public void index() {
		
	}
}