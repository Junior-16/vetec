package br.edu.ifc.concordia.inf.veterinaria.controller;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.mail.MessagingException;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.com.caelum.vraptor.boilerplate.util.CryptManager;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.ProntuarioBS;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.model.User;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;
import br.edu.ifc.concordia.inf.veterinaria.permision.UserRoles;
import br.edu.ifc.concordia.inf.veterinaria.properties.SystemConfigs;

@Controller

public class UserController extends AbstractController {
	@Inject private UserBS bs;
	
	@Permition(UserRoles.ADMIN)
	@Get(value="/createacount")
	@NoCache
	public void createacount(int x){
		if (x == 1) {
			this.result.include("samePassword", "Senha já existente");
		}else {
			
		}
	}
	
	@Get(value="/login")
	@NoCache
	public void login(int state, String errorMsg) {
		if(this.userSession.isLogged() == true) {
			this.result.redirectTo(IndexController.class).index();
		}
		else if (!GeneralUtils.isEmpty(errorMsg)&& state == 1){
			this.result.include("errorMsg",errorMsg);
		}else if (!GeneralUtils.isEmpty(errorMsg)&& state == 2){
			this.result.include("gotout",errorMsg);
		}else {
			
		}
	}
	
	@Post(value="/createacount")
	@NoCache
	public void cadastrar(String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email, String password, String username){
		if(this.bs.cadastrar(nome, especialidade, estudo, telefone, endereco, crmv, cep, cpf, email,password, username) == true){
			this.result.redirectTo(UserController.class).createacount(1);
		}
		else {
			this.result.redirectTo(IndexController.class).index();
		}
		
	}
	
	@Post(value="/login")
	@NoCache
	public void doLogin(String username, String password){
		if(username == null || password == null){
			this.result.redirectTo(this).login(1,"Campos incompletos");
		}else{
		User user = this.bs.login( username, password);
		if (user == null){
			this.result.redirectTo(this).login(1,"Nome de usuário ou senha incorretos!");
		}else{
			this.userSession.login(user);
			this.result.redirectTo(IndexController.class).index();
		}
		}
	}
	
	@Get(value="/logout")
	@NoCache
	public void sair(){
		if (this.userSession.isLogged() == true){
			this.userSession.logout();
			this.result.redirectTo(this).login(2,"Você Está Desconectado");
		}else{
			
		}
	}
	
	@Permition
	@Get(value="/cadastrarProprietario")
	@NoCache
	public void cadastrarProprietario() {
		if(this.userSession.isLogged() == true) {
			
		}else {
			this.result.redirectTo(this).login(0,null);
		}
	}
	
	@Post(value="/cadastrarproprietario")
	@NoCache
	public void cadastrar(String nome, String cep, String profissao, String cpf, String telefone, String endereco, String referencias) {
		this.bs.cadastrarProprietario( nome,  cpf,  cep,  telefone,  profissao,  endereco,  referencias);
		this.result.redirectTo(this).cadastrarProprietario();
	}
	
	@Permition
	@Get(value="/buscar")
	@NoCache
	public void buscar() {
		
	}
	
	@Post("/search")
	@NoCache
	@Permition
	public void buscar(String proprietario) {
		if(GeneralUtils.isEmpty(proprietario)) {
			this.result.include("notfound","Proprietario não encontrado");
		}else {
			List<Proprietario> proprietarioList = this.bs.busca(proprietario);
			if(proprietarioList.size() == 0) {
				this.result.include("notfound","Proprietario não encontrado");
			}else {
				this.result.include("found", proprietarioList);
			} 
		}
	}
	
	@Permition
	@Get(value="/perfil")
	@NoCache
	public void perfil() {
		this.result.include("perfil", this.userSession.getLoggedUser());
	}
	
	@Permition
	@Get(value="/modificarPerfil")
	@NoCache
	public void modificarPerfil() {
		this.result.include("modificarperfil",this.userSession.getLoggedUser());
	}
	
	@Post(value="/modificarPerfil")
	@NoCache
	public void update(String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email,String old,String senha) {
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		if(GeneralUtils.isEmpty(old) == false) {
			if(this.userSession.getLoggedUser().getPassword().equals(CryptManager.passwordHash(old)) == false) {
				this.result.include("mudar", "Senha incorreta");
				this.result.redirectTo(this).modificarPerfil();
			}
			else {
				User user = this.bs.update(this.userSession.getLoggedUser().getNome(), nome, especialidade,estudo,telefone,endereco,crmv,cep,cpf,email,senha);
				this.userSession.login(user); 
				this.result.redirectTo(IndexController.class).index();
			}
		}else {
			User user = this.bs.update( this.userSession.getLoggedUser().getNome(), nome, especialidade,estudo,telefone,endereco,crmv,cep,cpf,email,senha);
			this.userSession.login(user); 
			this.result.redirectTo(IndexController.class).index();
		}
		
	}
	
	@Get("/listUsers")
	@NoCache
	@Permition
	public void listarUsuarios() {
		List<User> user = this.bs.listUser(this.userSession.getLoggedUser().getNome());
		this.result.include("userList", user);
	}
	
	@Get("removerUser/{id}")
	@NoCache
	@Permition(UserRoles.ADMIN)
	public void remove(Long id){
		this.bs.removeUser(id);
		this.result.redirectTo(IndexController.class).index();
	}
	
	@Get(value = "/recuperarSenha")
	@NoCache
	public void recuperarSenha(){
		
	}
	
	@Post(value = "/recuperarSenha")
	@NoCache
	public void mudarSenha(String username, String email) throws MessagingException {
		this.bs.recoverPassword(username, email);
		this.result.redirectTo(this).login(10, null);
	}
}
