package br.edu.ifc.concordia.inf.veterinaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;

@Controller
public class ProntuarioController extends AbstractController{
	@Inject private UserBS bs;
	SessionFactoryProducer factoryproducer = new SessionFactoryProducer();
	
	@Get(value="/prontuario")
	@NoCache
	public void prontuario() {
		
	}
}
