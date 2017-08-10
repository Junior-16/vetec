package br.edu.ifc.concordia.inf.veterinaria.cirurgiaController;

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
import br.edu.ifc.concordia.inf.veterinaria.permision.PermissionInterceptor;
import br.edu.ifc.concordia.inf.veterinaria.permision.Permition;
import br.edu.ifc.concordia.inf.veterinaria.permision.UserRoles;

@Controller

public class CirurgiaController extends AbstractController {
	
	@Get("/cirurgia/ficha_anestesica")
	public void fichaAnestesica() {}
	
	@Get("/cirurgia/ficha_internacao")
	public void fichaInternacao() {}
	
	@Get("/cirurgia/descricao_cirurgia")
	public void descricaoCirurgia() {}
}
