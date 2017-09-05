package br.edu.ifc.concordia.inf.veterinaria.business;


import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.enterprise.context.RequestScoped;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.jboss.logging.Logger;

import br.com.caelum.vraptor.boilerplate.HibernateBusiness;
import br.com.caelum.vraptor.boilerplate.util.CryptManager;
import br.com.caelum.vraptor.boilerplate.util.GeneralUtils;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup.DefaultTrustManager;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.model.User;
import br.edu.ifc.concordia.inf.veterinaria.properties.SystemConfigs;

@RequestScoped
public class UserBS extends HibernateBusiness{
	Logger LOG = Logger.getLogger(ApplicationSetup.class); 
	
	public 	User login(String username, String password){
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", CryptManager.passwordHash(password)));
		return (User) criteria.uniqueResult();	
	}
	
	public List<Proprietario> busca( String filter) {
		Criteria criteria = this.dao.newCriteria(Proprietario.class);
		criteria.add(Restrictions.ilike("nome", filter, MatchMode.ANYWHERE));
		return this.dao.findByCriteria(criteria, Proprietario.class);
	}
	
	public void removeUser(Long id) {
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.eq("id",id));
		User usuario = (User) criteria.uniqueResult();
		dao.delete(usuario);
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

	public void cadastrarProprietario( String nome, String cpf, String cep, String telefone, String profissao, String endereco, String referencias) {		
		Proprietario dono = new Proprietario();
		dono.setNome(nome);
		dono.setCpf(cpf);
		dono.setCep(cep);
		dono.setTelefone(telefone);
		dono.setProfissao(profissao);
		dono.setEndereco(endereco);
		dono.setReferencias(referencias);
		dao.persist(dono);
		this.validate();
	}
	public User update(String nameUserlogged, String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email,String senha) {
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
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
		this.validate();
		return userUpdate;
	}
	
	public boolean cadastrar( String nome, String especialidade, String estudo, String telefone, String endereco, String crmv, String cep, String cpf, String email, String password, String username){
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
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
			this.dao.persist(user);
			this.validate();
			return false;
		}
	}
	public void proprietarioUpdate(String nome, String cpf, String telefone, String profissao, String endereco, String cep, String referencias) {
		Proprietario proprietario = this.busca(nome).get(0);
		proprietario.setNome(nome);
		proprietario.setCpf(cpf);
		proprietario.setTelefone(telefone);
		proprietario.setProfissao(profissao);
		proprietario.setEndereco(endereco);
		proprietario.setCep(cep);
		proprietario.setReferencias(referencias);
		this.dao.update(proprietario);
		this.validate();
	}
	
	public void validate() {
		try {
			SSLContext ctx = SSLContext.getInstance("TLS");
			ctx.init(new KeyManager[0], new TrustManager[] { new DefaultTrustManager() }, new SecureRandom());
			SSLContext.setDefault(ctx);
		} catch (GeneralSecurityException ex) {
			System.out.println("N�o consegui sobrescrever o SSLContext.");
			ex.printStackTrace();
		}

	}
	
	public void recoverPassword(String username, String email) throws MessagingException {
		// Recupera o usuário que esqueceu a senha
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		Criteria criteria = this.dao.newCriteria(User.class);
		criteria.add(Restrictions.eq("username", username));
		User usuario = (User) criteria.uniqueResult();
		String to = email;
		try {
			Properties properties = System.getProperties();
			properties.put("mail.smtp.starttls.enable", "true");
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.user", "veterinaria Concordia");
			properties.put("mail.smtp.password", "veterinariaIFC");
			properties.put("mail.smtp.port", "587");
			properties.put("mail.smtp.auth", "true");

			// Get the default Session object.
			Session session = Session.getDefaultInstance(properties);
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress("veterinaria.ifc@gmail.com"));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Set Subject: header field
			message.setSubject("Nova Senha");

			Random aleatorio = new Random();
			String senha = "";
			while (senha.length() <= 5) {
				senha += aleatorio.nextInt(10);
			}
			// Define a nova senha e atualiza o banco de dados
			usuario.setPassword(CryptManager.passwordHash(senha));
			this.dao.update(usuario);
			message.setText(
					"Sistema Gerenciador - Clícica Veterinaria IFC Concórdia notifica: Sua nova senha é -->" + senha);

			Transport t = session.getTransport("smtp");
			t.connect("smtp.gmail.com", "veterinaria.ifc@gmail.com", "veterinariaIFC");
			t.sendMessage(message, message.getAllRecipients());
			t.close();
		} catch (AddressException mex) {
			mex.printStackTrace();
		}

	}
}
