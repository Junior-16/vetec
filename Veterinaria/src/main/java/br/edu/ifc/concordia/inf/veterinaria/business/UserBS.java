package br.edu.ifc.concordia.inf.veterinaria.business;


import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.jboss.logging.Logger;

import br.com.caelum.vraptor.boilerplate.HibernateBusiness;
import br.com.caelum.vraptor.boilerplate.HibernateDAO;
//import br.com.caelum.vraptor.boilerplate.HibernateDAO;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.com.caelum.vraptor.boilerplate.factory.SessionManager;
import br.com.caelum.vraptor.boilerplate.util.CryptManager;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup.DefaultTrustManager;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.model.User;
import br.edu.ifc.concordia.inf.veterinaria.properties.SystemConfigs;

@RequestScoped
public class UserBS extends HibernateBusiness{
	
	Logger LOG = Logger.getLogger(ApplicationSetup.class); 
	public 	User login(SessionFactoryProducer factoryProducer,String username, String password){
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", CryptManager.passwordHash(password)));
		return (User) criteria.uniqueResult();	
	}
	
	public List<Proprietario> busca(SessionFactoryProducer factoryProducer, String filter) {
		Criteria criteria = this.dao.newCriteria(Proprietario.class);
		criteria.add(Restrictions.ilike("nome", filter, MatchMode.ANYWHERE));
		return this.dao.findByCriteria(criteria, Proprietario.class);
	}
	public List<User> listUser(String user){
		List <User> users;
		users = new ArrayList<User>();
		List <User> found;
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.ilike("nome", "", MatchMode.ANYWHERE));
		found = this.dao.findByCriteria(criteria, User.class);
		int index = 0;
		while(index < found.size()) {
			if(found.get(index).getNome().equals(user) == true) {
				index++;
			}else{
				users.add(found.get(index));
				index++;
			}
		}
		return users;
		
	}

	public void cadastrarProprietario(SessionFactoryProducer factoryProducer, String nome, String cpf, String cep, String telefone, String profissao, String endereco, String referencias) {		
		SessionManager mngr = new SessionManager(factoryProducer.getInstance());
		HibernateDAO dao = new HibernateDAO(mngr);
		Proprietario dono = new Proprietario();
		dono.setNome(nome);
		dono.setCpf(cpf);
		dono.setCep(cep);
		dono.setTelefone(telefone);
		dono.setProfissao(profissao);
		dono.setEndereco(endereco);
		dono.setReferencias(referencias);
		dao.persist(dono);
		this.validate(mngr);
	}
	public User update(SessionFactoryProducer factoryProducer,String nameUserlogged, String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email,String senha) {
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		SessionManager mngr = new SessionManager(factoryProducer.getInstance());
		HibernateDAO dao = new HibernateDAO(mngr);
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.eq("nome", nameUserlogged));
		User userUpdate = (User) criteria.uniqueResult();
		if (GeneralUtils.isEmpty(senha) == false) {
			userUpdate.setPassword(CryptManager.passwordHash(senha));
		}else {
			
		}
		userUpdate.setNome(nome);
		userUpdate.setEspecialidade(especialidade);
		userUpdate.setEstudo(estudo);
		userUpdate.setTelefone(telefone);
		userUpdate.setEndereco(endereco);
		userUpdate.setCrmv(crmv);
		userUpdate.setCep(cep);
		userUpdate.setCpf(cpf);
		userUpdate.setEmail(email);
		dao.update(userUpdate);
		this.validate(mngr);
		return userUpdate;
	}
	
	public boolean cadastrar(SessionFactoryProducer factoryProducer, String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email, String password, String username){
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		SessionManager mngr = new SessionManager(factoryProducer.getInstance());
		HibernateDAO dao = new HibernateDAO(mngr);
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.eq("password", CryptManager.passwordHash(password)));
		User user = (User) criteria.uniqueResult();
		if (user != null) {
			return true;
		}
		else {
			user = new User();
			user.setUsername(username);
			user.setPassword(CryptManager.passwordHash(password));
			user.setEstudo(estudo);
			user.setCep(cep);
			user.setCpf(cpf);
			user.setCrmv(crmv);
			user.setEndereco(endereco);
			user.setEspecialidade(especialidade);
			user.setEmail(email);
			user.setNome(nome);
			user.setTelefone(telefone);
			dao.persist(user);
			this.validate(mngr);
			return false;
		}
	}
	
	public void validate(SessionManager mngr) {
		try {
			SSLContext ctx = SSLContext.getInstance("TLS");
			ctx.init(new KeyManager[0], new TrustManager[] { new DefaultTrustManager() }, new SecureRandom());
			SSLContext.setDefault(ctx);
		} catch (GeneralSecurityException ex) {
			System.out.println("N�o consegui sobrescrever o SSLContext.");
			ex.printStackTrace();
		}

		mngr.closeSession();
	}
}