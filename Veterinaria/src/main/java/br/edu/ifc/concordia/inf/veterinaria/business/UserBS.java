package br.edu.ifc.concordia.inf.veterinaria.business;


import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.enterprise.context.RequestScoped;
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
import javax.mail.Message;
import javax.mail.MessagingException;

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
	
	public void recoverPassword(String email) throws MessagingException {
	      // Recipient's email ID needs to be mentioned.
	      String to = email;

	      // Sender's email ID needs to be mentioned
	      String from = "junior.ramisch@gmail.com";

	      // Assuming you are sending email from localhost
	      String host = "junior ramisch";

	      // Get system properties
	      Properties properties = System.getProperties();

	      // Setup mail server
	      properties.setProperty("mail.smtp.port", "25");
	      properties.setProperty("mail.smtp.host", "smtp.gmail.com");
	      properties.put("mail.smtp.user", "junior.ramisch@gmail.com");
		  properties.put("mail.smtp.password", "1512801538");
	      // Get the default Session object.
	      Session session = Session.getDefaultInstance(properties);
	      try {
	         // Create a default MimeMessage object.
	         MimeMessage message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(from));

	         // Set To: header field of the header.
	         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

	         // Set Subject: header field
	         message.setSubject("Nova Senha");

	         // Now set the actual message
	         message.setText("sua nova senha é: 12342");

	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	      }catch (AddressException mex) {
	         mex.printStackTrace();
	      }
	   }
	
}
