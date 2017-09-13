package br.edu.ifc.concordia.inf.veterinaria.business;

import java.security.GeneralSecurityException;
import java.security.SecureRandom;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.boilerplate.HibernateBusiness;
import br.edu.ifc.concordia.inf.veterinaria.factory.ApplicationSetup.DefaultTrustManager;
import br.edu.ifc.concordia.inf.veterinaria.model.AnamneseEspecial;
import br.edu.ifc.concordia.inf.veterinaria.model.AnamneseGeral;
import br.edu.ifc.concordia.inf.veterinaria.model.Animal;
import br.edu.ifc.concordia.inf.veterinaria.model.InfoGerais;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
@RequestScoped
public class ProntuarioBS extends HibernateBusiness{
	@Inject UserBS bs;
	public boolean cadastrarAnimal(String nome, String especie, String idade, String peso, String sexo, String raca, String info,String nomeProprietario) {
		Criteria criteria = this.dao.newCriteria(Proprietario.class);
		Animal animal = new Animal();
		criteria.add(Restrictions.eq("nome", nomeProprietario));
		Proprietario proprietario = (Proprietario) criteria.uniqueResult();
		if (proprietario == null) {
			return false;
		}else {
			InfoGerais infogerais = new InfoGerais();
			animal.setNome(nome);
			animal.setEspecie(especie);
			animal.setIdade(idade);
			animal.setPeso(peso);
			animal.setSexo(sexo);
			animal.setRaca(raca);
			animal.setInfoAdd(info);
			animal.setProprietario(proprietario);
			infogerais.setAnimal(animal);
			this.dao.persist(animal);
			this.dao.persist(infogerais);
			this.validate();
			return true;
		}
	}
	
	public Animal buscaAnimal(Long id) {
		Criteria criteria = dao.newCriteria(Animal.class);
		criteria.add(Restrictions.eq("id", id));
		return (Animal) criteria.uniqueResult();
	}
	
	public void updateInfoGerais( InfoGerais ficha ) {
		InfoGerais info = this.infoGerais(ficha.getAnimal().getId());
		Animal animal = this.buscaAnimal(ficha.getAnimal().getId());
		animal.setEspecie(ficha.getAnimal().getEspecie());
		animal.setIdade(ficha.getAnimal().getIdade());
		animal.setNome(ficha.getAnimal().getNome());
		animal.setPeso(ficha.getAnimal().getPeso());
		animal.setRaca(ficha.getAnimal().getRaca());
		animal.setSexo(ficha.getAnimal().getSexo());
		info.setAptidao(ficha.getAptidao());
		info.setCidade(ficha.getCidade());
		info.setData(ficha.getData());
		info.setSetor(ficha.getSetor());
		info.setFicha_clinica(ficha.getFicha_clinica());
		dao.update(animal);
		dao.update(info);
		this.validate();
	}
	
	public InfoGerais infoGerais(Long  id) {
		Criteria criteria = this.dao.newCriteria(InfoGerais.class);
		criteria.add(Restrictions.eq("animal.id", id));
		return (InfoGerais) criteria.uniqueResult();
		
	}
	public AnamneseGeral anamneseGeral( Long id ) {
		Criteria criteria = this.dao.newCriteria(AnamneseGeral.class);
		criteria.add(Restrictions.eq("animal.id", id));
		return (AnamneseGeral) criteria.uniqueResult();
		
	}
	public AnamneseEspecial anamneseEspecial(Long id) {
		Criteria criteria = this.dao.newCriteria(AnamneseEspecial.class);
		criteria.add(Restrictions.eq("animal.id", id));
		return (AnamneseEspecial)criteria.uniqueResult();
	}
	
	public void anamneseGeral(AnamneseGeral anamnese) {
		this.dao.persist(anamnese);
		this.validate();
	}
	
	public void anamneseEspecial(AnamneseEspecial anamnese) {
		if(this.anamneseEspecial(anamnese.getAnimal().getId()) == null) {
			this.dao.persist(anamnese);
		}else {
			AnamneseEspecial anamneseEspecial = this.anamneseEspecial(anamnese.getAnimal().getId());
			anamneseEspecial.setPeleAnexos(anamnese.getPeleAnexos());
			anamneseEspecial.setSistemaDigestivo(anamnese.getSistemaDigestivo());
			anamneseEspecial.setSistemaLocomotor(anamnese.getSistemaLocomotor());
			anamneseEspecial.setSistemaNervoso(anamnese.getSistemaNervoso());
			anamneseEspecial.setSistemaReprodutivo(anamnese.getSistemaReprodutivo());
			anamneseEspecial.setSistemaRespiratorio(anamnese.getSistemaRespiratorio());
			anamneseEspecial.setSistemaUrinario(anamnese.getSistemaUrinario());
			anamneseEspecial.setSistemaVisual(anamnese.getSistemaVisual());
			this.dao.update(anamneseEspecial);
		}
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
