package br.edu.ifc.concordia.inf.veterinaria.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.ProntuarioBS;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;

@Controller
public class ProntuarioController extends AbstractController{
	@Inject private ProntuarioBS Prontuariobs;
	@Inject private UserBS bs;
	Animal animal = new Animal();
	
	@Permition
	@Get(value="/prontuario/{proprietario}/{animal}")
	@NoCache
	public void prontuario(String proprietario, String animal) {
		Proprietario proprietarioList = this.bs.busca(proprietario).get(0);
		List<Animal> animais = proprietarioList.getAnimais();
		int index = 0;
		while(index < animais.size()) {
			if(animais.get(index).getNome().equals(animal) == true) {
				this.result.include("animal",animais.get(index));
			}
			index++;
		}
	}
	
	@Permition
	@Get(value="/cadastrarAnimal")
	@NoCache
	public void cadastrarAnimal() {

	}
	
	@Post(value="/cadastrarAnimal")
	@NoCache
	public void cadastrar(String nome, String especie, String idade, String peso, String sexo, String raca, String info,String nomeProprietario) {
		this.Prontuariobs.cadastrarAnimal(nome, especie, idade, peso, sexo, raca, info, nomeProprietario);
		this.result.redirectTo(UserController.class).buscar();
	}
	
	@Permition
	@Get("/proprietario/{nome}")
	@NoCache
	public void proprietario(String nome) {
		List<Proprietario> proprietario = this.bs.busca(nome);
		this.result.include("proprietarioInfo", proprietario.get(0));
	}
	
	@Permition
	@Get(value="/modificarProprietario")
	@NoCache
	public void modificarProprietario(String nome) {
		List<Proprietario> proprietario = this.bs.busca( nome);
		this.result.include("changeOwner", proprietario.get(0));
	}
	
	@Permition
	@Post(value="/modificarProprietario")
	@NoCache
	public void salvarProprietario(String nome, String cpf, String telefone, String profissao, String endereco, String cep, String referencias) {
		this.bs.proprietarioUpdate( nome, cpf, telefone, profissao, endereco, cep, referencias);
		this.result.redirectTo(IndexController.class).index();
	}
	
}
