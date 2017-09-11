package br.edu.ifc.concordia.inf.veterinaria.controller;

import java.util.List;

import javax.inject.Inject;

import org.jboss.logging.Logger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSerializer;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.com.caelum.vraptor.serialization.gson.WithoutRoot;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.ProntuarioBS;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.InfoGerais;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;
import br.com.caelum.vraptor.view.*;

@Controller
public class ProntuarioController extends AbstractController{
	@Inject private ProntuarioBS Prontuariobs;
	@Inject private UserBS bs;
	Animal animal = new Animal();
	private static final Logger LOG = Logger.getLogger(ApplicationSetup.class);
	@Permition
	@Get(value="/prontuario/{id}")
	@NoCache
	public void prontuario(Long id) {
		this.result.include("ficha",this.Prontuariobs.infoGerais(id));
		this.result.include("AnamneseGeral", this.Prontuariobs.anamneseGeral(id));
	}
	@Permition
	@Get(value="/cadastrarAnimal")
	@NoCache
	public void cadastrarAnimal(String error) {
		if(GeneralUtils.isEmpty(error) == false) {
			this.result.include("NotFoundOwner",error);
		}else {
			
		}
	}
	
	@Post(value="/cadastrarAnimal")
	@NoCache
	public void cadastrar(String nome, String especie, String idade, String peso, String sexo, String raca, String info,String nomeProprietario) {
		if (this.Prontuariobs.cadastrarAnimal(nome, especie, idade, peso, sexo, raca, info, nomeProprietario) == true) {
			this.result.redirectTo(UserController.class).buscar();
		}else {
			this.result.redirectTo(this).cadastrarAnimal("Proprietario não encontrado");
		}

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
	//Controllers das informações do prontuario
	
	@Post(value="/infoGerais")
	@Consumes({"application/json"})
	public void prontuario(InfoGerais ficha) {
		if (ficha != null) {
			this.Prontuariobs.updateInfoGerais(ficha);
		}else {
			this.fail("teste");
		}
	}
	
}
