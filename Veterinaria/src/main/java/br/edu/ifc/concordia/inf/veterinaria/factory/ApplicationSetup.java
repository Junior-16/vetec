package br.edu.ifc.concordia.inf.veterinaria.factory;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.ejb.Startup;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;
import javax.inject.Inject;
import javax.net.ssl.X509TrustManager;
import javax.servlet.ServletContext;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.boilerplate.NoCache;
import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
@ApplicationScoped
@Startup
public class ApplicationSetup {


	protected ApplicationSetup() {
	}

	public void initializeAtStartup(@Observes ServletContext context) {

	}
	
	@Post("/createacount")
	@NoCache
	public void informacoes(String nome, String profissao, String cpf, String cep, String telefone, String endereco, String referencias){
		
	}

	@Inject
	public ApplicationSetup(SessionFactoryProducer factoryProducer) {
		factoryProducer.initialize("hibernate.cfg.xml");

	}
	public static class DefaultTrustManager implements X509TrustManager {

		@Override
		public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
		}

		@Override
		public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
		}

		@Override
		public X509Certificate[] getAcceptedIssuers() {
			return null;
		}
	}
}
