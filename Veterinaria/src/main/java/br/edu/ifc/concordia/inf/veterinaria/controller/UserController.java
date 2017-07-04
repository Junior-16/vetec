package br.edu.ifc.concordia.inf.veterinaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;
import br.edu.ifc.concordia.inf.veterinaria.model.User;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;
import br.edu.ifc.concordia.inf.veterinaria.permision.UserRoles;

@Controller

public class UserController extends AbstractController {
	@Inject private UserBS bs;
	SessionFactoryProducer factoryproducer = new SessionFactoryProducer();
	@Get(value="/createacount")
	@NoCache
	public void createacount(){
		
	}
	
	@Get("/login")
	public void login(String errorMsg) {
		if (!GeneralUtils.isEmpty(errorMsg)){
			this.result.include("errorMsg",errorMsg);
		}
	}
	
	@Post(value="/createacount")
	@NoCache
	public void cadastrar(String nome, String profissao, String cpf, String cep, String telefone, String endereco, String referencias,String password,String username){
		this.bs.cadastrar(factoryproducer, nome, profissao, cpf,cep,telefone,endereco,referencias,password,username);
		this.result.redirectTo(this).login(null);
	}
	
	@Post(value="/login")
	@NoCache
	public void doLogin(String username, String password){
		if(username == null || password == null){
			this.result.redirectTo(this).login("Campos incompletos");
		}else{
		User user = this.bs.login(factoryproducer, username, password);
		if (user == null){
			this.result.redirectTo(this).login("Nome de usuário ou senha incorretos!");
		}else{
			this.userSession.login(user);
			this.result.redirectTo(IndexController.class).index();
		}
		}
	}
	
	
	@Get("/loggedUser")
	@Permition(UserRoles.ADMIN)
	public void getLoggeduser(){
		
	}
}
