package br.edu.ifc.concordia.inf.veterinaria.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.boilerplate.NoCache;

import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;

@Controller
public class CirurgiaController extends AbstractController {
	
	@Get(value="/cirurgia")
	@NoCache
	@Permition
	public void cirurgia() {
		this.result.include("permition",this.userSession.getLoggedUser());
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
	}
}
