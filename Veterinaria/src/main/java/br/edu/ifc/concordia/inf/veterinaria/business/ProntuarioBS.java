package br.edu.ifc.concordia.inf.veterinaria.business;

import java.security.GeneralSecurityException;
import java.security.SecureRandom;

import javax.enterprise.context.RequestScoped;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.boilerplate.HibernateBusiness;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup.DefaultTrustManager;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
@RequestScoped
public class ProntuarioBS extends HibernateBusiness{
	public void cadastrarAnimal(String nome, String especie, String idade, String peso, String sexo, String raca, String info,String nomeProprietario) {
		Criteria criteria = this.dao.newCriteria(Proprietario.class);
		Animal animal = new Animal();
		criteria.add(Restrictions.eq("nome", nomeProprietario));
		Proprietario proprietario = (Proprietario) criteria.uniqueResult();
		animal.setNome(nome);
		animal.setEspecie(especie);
		animal.setIdade(idade);
		animal.setPeso(peso);
		animal.setSexo(sexo);
		animal.setRaca(raca);
		animal.setInfoAdd(info);
		animal.setProprietario(proprietario);
		this.dao.persist(animal);
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
}
