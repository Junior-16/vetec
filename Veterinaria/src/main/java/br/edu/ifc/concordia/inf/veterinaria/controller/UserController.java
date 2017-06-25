package br.edu.ifc.concordia.inf.veterinaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.business.UserBS;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.model.User;

@Controller

public class UserController extends AbstractController {
	@Inject private UserBS bs;
	
	@Get("/login")
	public void login(String errorMsg) {
		if (!GeneralUtils.isEmpty(errorMsg)){
			this.result.include("errorMsg",errorMsg);
		}
		
	}
	

	@Post(value="/login")
	@NoCache
	public void doLogin(String login, String password)
	{
		User user = this.bs.login(login, password);
		if (user == null){
			this.result.redirectTo(this).login("Usuário ou senha errado!");
		}else{
			this.userSession.login(user);
			this.result.redirectTo(IndexController.class).index();
		}
		
	}
}
