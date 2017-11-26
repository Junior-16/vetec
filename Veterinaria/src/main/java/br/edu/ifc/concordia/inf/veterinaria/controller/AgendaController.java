package br.edu.ifc.concordia.inf.veterinaria.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;

@Controller
public class AgendaController extends AbstractController{

	@Permition
	@Get("/agenda")
	@NoCache
	public void agenda() {
		this.result.include("permition",this.userSession.getLoggedUser());
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
	}
}
