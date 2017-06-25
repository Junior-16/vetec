package br.edu.ifc.concordia.inf.veterinaria.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;

@Controller
public class PagesController extends AbstractController {
	@Get(value="/createacount")
	@NoCache
	public void createacount(){
		System.out.println("Olá Mundo");
	}
}
