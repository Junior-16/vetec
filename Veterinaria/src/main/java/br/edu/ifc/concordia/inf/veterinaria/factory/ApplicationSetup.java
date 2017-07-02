package br.edu.ifc.concordia.inf.veterinaria.factory;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.ejb.Startup;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;
import javax.inject.Inject;
import javax.net.ssl.X509TrustManager;
import javax.servlet.ServletContext;

import org.jboss.logging.Logger;

import br.com.caelum.vraptor.boilerplate.factory.SessionFactoryProducer;
import br.com.caelum.vraptor.boilerplate.util.CryptManager;
import br.edu.ifc.concordia.inf.veterinaria.properties.SystemConfigs;

@ApplicationScoped
@Startup
public class ApplicationSetup {

	private static final Logger LOG = Logger.getLogger(ApplicationSetup.class);

	protected ApplicationSetup() {
	}

	public void initializeAtStartup(@Observes ServletContext context) {

	}
	

	@Inject
	public ApplicationSetup(SessionFactoryProducer factoryProducer) {
		factoryProducer.initialize("hibernate.cfg.xml");
		
		CryptManager.updateKey(SystemConfigs.getConfig("crypt.key"));
		CryptManager.updateSalt("@2o!A", "70Px$");
		LOG.info("Overwriting SSL context to ignore invalid certificates...");

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
