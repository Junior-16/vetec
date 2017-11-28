package br.edu.ifc.concordia.inf.veterinaria.controller;
import java.util.List;

import javax.inject.Inject;
import javax.mail.MessagingException;

import org.hibernate.AssertionFailure;
import org.hibernate.JDBCException;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.util.CryptManager;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.veterinaria.IndexController;
import br.edu.ifc.concordia.inf.veterinaria.abstractions.AbstractController;
import br.edu.ifc.concordia.inf.veterinaria.business.UserBS;
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
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		if (x == 1) {
			this.result.include("samePassword", "Senha já existente");
		}else {
			this.result.include("permition",this.userSession.getLoggedUser());
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
	@Consumes
	@NoCache
	public void cadastrar(String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email, String password, String username){
		try {
			if( nome.equals("") || especialidade.equals("") || estudo.equals("") ||  telefone.equals("") ||  endereco.equals("") ||  crmv.equals("") ||  cep.equals("") ||  cpf.equals("") ||  email.equals("") ||  password.equals("") ||  username.equals("")) {
				this.fail("Campos Incompletos");
			}
			if(password.length() < 5) {
				this.fail("A senha deve conter mais que 4 dígitos");
			}
			if(this.bs.cadastrar(nome, especialidade, estudo, telefone, endereco, crmv, cep, cpf, email,password, username) == true){
				this.fail("Senha já existente");
			}
			else {
				this.success("Cadastro realizado com sucesso");
			}
		}catch(JDBCException e) {
			this.fail("Nome de usuário já existente");
			
		}
		catch(AssertionFailure f) {
			this.fail("Nome de usuário e senha já existentes");
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
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		if(this.userSession.isLogged() == true) {
			this.result.include("permition",this.userSession.getLoggedUser());
		}else {
			this.result.redirectTo(this).login(0,null);
		}
	}
	
	@Post(value="/cadastrar")
	@Consumes({"application/json"})
	@NoCache
	public void cadastrar(String nome, String cep, String profissao, String cpf, String telefone, String endereco, String referencias) {
		if (nome.equals("") == true ||  cep.equals("") == true || profissao.equals("") == true || cpf.equals("") == true || telefone.equals("") == true || endereco.equals("") == true || referencias.equals("") == true) {
			this.fail("Preencha todos os campos");
		}
		else {
			this.bs.cadastrarProprietario( nome,  cpf,  cep,  telefone,  profissao,  endereco,  referencias);
			this.success("O cadastro foi realizado com sucesso");
		}
		
	}
	
	@Permition
	@Get(value="/buscar")
	@NoCache
	public void buscar(int x) {
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		if (x == 1) {
			this.result.include("success","Animal cadastrado com sucesso");
		}
		this.result.include("permition",this.userSession.getLoggedUser());
	}
	
	@Post("/search")
	@NoCache
	@Permition
	public void buscar(String proprietario) {
		this.result.include("permition",this.userSession.getLoggedUser());
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
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
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		this.result.include("perfil", this.userSession.getLoggedUser());
		this.result.include("permition",this.userSession.getLoggedUser());
	}
	
	@Permition
	@Get(value="/modificarPerfil")
	@NoCache
	public void modificarPerfil() {
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		this.result.include("modificarperfil",this.userSession.getLoggedUser());
		this.result.include("permition",this.userSession.getLoggedUser());
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
		this.result.include("loggedUser",this.userSession.getLoggedUser().getUsername());
		this.result.include("permition",this.userSession.getLoggedUser());
		if (this.userSession.getLoggedUser().getAcesso() == 2) {
			this.result.include("admin",this.userSession.getLoggedUser());
		}
		
		List<User> user = this.bs.listUser(this.userSession.getLoggedUser().getUsername());
		this.result.include("userList", user);
	}
	
	@Get("removerUser/{id}")
	@NoCache
	@Permition(UserRoles.ADMIN)
	public void remove(Long id){
		this.bs.removeUser(id);
		this.result.redirectTo(this).listarUsuarios();
	}
	
	@Get(value = "/recuperarSenha")
	@NoCache
	public void recuperarSenha(){
		
	}
	
	@Post("/recuperar")
	@NoCache
	public void recuperarSenha(String username, String email) { 
		try {
			if(username == null || email == null) {
				this.result.include("Empty","Campos incompletos");
			}
			else if(this.bs.recoverPassword(username, email) == false) {
				this.result.include("Empty", "Username não existe");
			}
			else {
				this.bs.recoverPassword(username, email);
				this.result.redirectTo(this).login(10, null);
			}
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
