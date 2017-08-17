package br.edu.ifc.concordia.inf.veterinaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.ProntuarioBS;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;

@Controller
public class ProntuarioController extends AbstractController{
	@Inject private ProntuarioBS Prontuariobs;
	SessionFactoryProducer factoryProducer = new SessionFactoryProducer();
	Animal animal = new Animal();
	@Get(value="/prontuario")
	@NoCache
	public void prontuario() {
		
	}
	
	@Permition
	@Get(value="prontuario/cadastrarAnimal")
	@NoCache
	public void cadastrarAnimal() {

	}
	
	@Post(value="/cadastrarAnimal")
	@NoCache
	public void cadastrar(String nome, String especie, String idade, String peso, String sexo, String raca, String info,String nomeProprietario) {
		this.Prontuariobs.cadastrarAnimal(factoryProducer, nome, especie, idade, peso, sexo, raca, info, nomeProprietario);
		this.result.redirectTo(UserController.class).buscar();
	}
}
