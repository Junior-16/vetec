package br.edu.ifc.concordia.inf.veterinaria.controller;

import java.util.List;

import javax.inject.Inject;

import org.jboss.logging.Logger;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.ProntuarioBS;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup;
import br.edu.ifc.concordia.inf.veterinaria.model.AnamneseEspecial;
import br.edu.ifc.concordia.inf.veterinaria.model.AnamneseGeral;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.ExameFisico;
import br.edu.ifc.concordia.inf.veterinaria.model.ExamesComplementares;
import br.edu.ifc.concordia.inf.veterinaria.model.InfoGerais;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.model.Resultados;
import br.edu.ifc.concordia.inf.veterinaria.model.Retorno;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;
/*Essa é a classe de controladores das páginas(get, post) -- Junior Vitor Vamisch que fez essa merda*/
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
		this.result.include("permition",this.userSession.getLoggedUser());
		this.result.include("InfoGerais",this.Prontuariobs.infoGerais(id));
		this.result.include("AnamneseGeral", this.Prontuariobs.anamneseGeral(id));
		this.result.include("AnamneseEspecial",this.Prontuariobs.anamneseEspecial(id));
		this.result.include("ExameFisico",this.Prontuariobs.exameFisico(id));
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
	}

	@Permition
	@Get(value="/cadastrarAnimal")
	@NoCache
	public void cadastrarAnimal(String error) {
		this.result.include("permition",this.userSession.getLoggedUser());
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		if(GeneralUtils.isEmpty(error) == false) {
			this.result.include("NotFoundOwner",error);
		}else {
			
		}
	}
	
	@Post(value="/cadastrarAnimal")
	@NoCache
	public void cadastrar(String nome, String especie, String idade, String peso, String sexo, String raca, String info,String nomeProprietario) {
		if (this.Prontuariobs.cadastrarAnimal(nome, especie, idade, peso, sexo, raca, info, nomeProprietario) == true) {
			this.result.redirectTo(UserController.class).buscar(1);
		}else {
			this.result.redirectTo(this).cadastrarAnimal("Proprietario não encontrado");
		}

	}
	
	@Permition
	@Get("/proprietario/{nome}")
	@NoCache
	public void proprietario(String nome) {
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		this.result.include("permition",this.userSession.getLoggedUser());
		List<Proprietario> proprietario = this.bs.busca(nome);
		this.result.include("proprietarioInfo", proprietario.get(0));
	}
	
	@Permition
	@Get(value="/modificarProprietario")
	@NoCache
	public void modificarProprietario(String nome) {
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		this.result.include("permition",this.userSession.getLoggedUser());
		List<Proprietario> proprietario = this.bs.busca( nome);
		this.result.include("changeOwner", proprietario.get(0));
	}
	
	@Permition
	@Post(value="/modificarProprietario")
	@NoCache
	public void salvarProprietario(String nome, String cpf, String telefone, String profissao, String endereco, String cep, String referencias) {
		this.bs.proprietarioUpdate( nome, cpf, telefone, profissao, endereco, cep, referencias);
		try {
			Thread.sleep(4000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.result.redirectTo(IndexController.class).index();
	}
	//Controllers das informações do prontuario
	
	@Post(value="/infoGerais")
	@Consumes({"application/json"})
	public void prontuario(InfoGerais ficha) {
		if (ficha != null) {
			this.Prontuariobs.updateInfoGerais(ficha);
			this.success("Os dados foram salvos");
		}else {
			this.fail("Os dados não foram salvos, repita o processo");
		}
	}
	
	@Post(value = "/anamneseGeral")
	@Consumes({"application/json"})
	public void anamneseGeral(AnamneseGeral anamnese) {
		if (anamnese != null) {
			this.Prontuariobs.anamneseGeral(anamnese);
			this.success("Os dados foram salvos");
		}else {
			this.fail("Os dados não foram salvos, repita o processo");
		}
	}
	
	@Post(value="/anamneseEspecial")
	@Consumes({"application/json"})
	public void anamneseEspecial(AnamneseEspecial anamnese) {
		if(anamnese != null) {
			this.Prontuariobs.anamneseEspecial(anamnese);
			this.success("Os dados foram salvos");
		}else {
			this.fail("Os dados não foram salvos, repita o processo");
		}
	}
	
	@Post("/exameFisico")
	@Consumes({"application/json"})
	public void exameFisico(ExameFisico exame) {
		if (exame != null) {
			this.Prontuariobs.exameFisico(exame);
			this.success("Os dados foram salvos");
		}else {
			this.fail("Os dados não foram salvos, repita o processo");
		}
	}
	
	@Post("/examesComplementares")
	@Consumes({"application/json"})
	public void examesComplementares(ExamesComplementares exames) {
		if (exames != null) {
			this.Prontuariobs.examesComplementares(exames);
			this.success("Os dados foram salvos");
		}else {
			this.fail("Os dados não foram salvos, repita o processo");
		}
	}
	
	@Post("/resultados")
	@Consumes({"application/json"})
	public void resultados(Resultados resultados) {
		if(resultados != null) {
			this.Prontuariobs.resultados(resultados);
			this.success("Os dados foram salvos");
		}else {
			this.fail("Os dados não foram salvos, repita o processo");
		}
	}
	
	@Get("/examescomplementares")
	@NoCache
	public void ExamesComplementares(Long id) {
		ExamesComplementares exames = this.Prontuariobs.examesComplementares(id);
		if (exames == null) {
			this.fail("Deu pau");
		}else {
			this.success(exames);
		}
	}
	
	@Get("/resultados")
	@NoCache
	public void resultados(Long id) {
		Resultados resultado = this.Prontuariobs.resultados(id);
		if(resultado == null) {
			this.fail("Houve um Problema");
		}
		else {
			this.success(resultado);
		}
		
	}
	
	@Post("/retorno")
	@Consumes({"application/json"})
	public void retorno(Resultados resultados, ExameFisico exameFisico, ExamesComplementares examesComplementares, String date, String anamnese, Long animalId, String idRetorno) {
		if(idRetorno.equals("") == true) {
			this.Prontuariobs.retorno(resultados,exameFisico,examesComplementares,date,anamnese,animalId);
			this.success("Os dados foram salvos");
		}else {
			this.Prontuariobs.updateRetorno(resultados,exameFisico,examesComplementares,date,anamnese,Long.parseLong(idRetorno));
			this.success("Os dados foram atualizados");
		}
		
	}
	
	@Get("/dataRetorno")
	@Consumes
	@NoCache
	public void dataRetorno(Long animalId) {
		List<Retorno> datas = this.Prontuariobs.dataRetorno(animalId);
		if (datas != null) {
			this.success(datas, (long) datas.size());
		}
		else {
			this.fail("Deu pau");
		}
	}
	
	@Get("/getReturn")
	@Consumes
	public void getReturn(Long id) {
		Retorno retorno  = this.Prontuariobs.getReturn(id);
		if(retorno != null) {
			this.success(retorno);
		}
		else {
			this.fail("Deu pau");
		}
	}
}
