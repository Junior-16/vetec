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
	
	public InfoGerais infoGerais(Long  id) {
		Criteria criteria = this.dao.newCriteria(InfoGerais.class);
		criteria.add(Restrictions.eq("animal.id", id));
		return (InfoGerais) criteria.uniqueResult();
		
	}
	public AnamneseGeral anamneseGeral(Long  id) {
		Criteria criteria = this.dao.newCriteria(AnamneseGeral.class);
		criteria.add(Restrictions.eq("animal.id", id));
		return (AnamneseGeral) criteria.uniqueResult();
		
	}
	
	public void updateInfoGerais(Long id, String ficha, String data, String setor, String animal, String aptidao, String cidade, String proprietario, String especie, String raca, String sexo, String idade, String peso) {
		InfoGerais info = this.infoGerais(id);
		Animal animalFicha = info.getAnimal();
		//Informações do Animal
		animalFicha.setIdade(idade);
		animalFicha.setSexo(sexo);
		animalFicha.setPeso(peso);
		animalFicha.setEspecie(especie);
		animalFicha.setRaca(raca);
		animalFicha.setNome(animal);
		//Informações da Ficha
		info.setAnimal(animalFicha);
		info.setFicha_clinica(ficha);
		info.setData(data);
		info.setSetor(setor);
		info.setAptidao(aptidao);
		info.setCidade(cidade);	
		dao.update(animalFicha);
		dao.update(info);
		this.validate();
	}
	public void anamneseGeral(Long id, String motivoConsulta, String antecedentesMorbidos, String medidasSanitarias) {
		AnamneseGeral anamnese = this.anamneseGeral(id);
		if(anamnese == null) {
			Criteria criteria = this.dao.newCriteria(Animal.class);
			criteria.add(Restrictions.eq("id", id));
			Animal animal = (Animal) criteria.uniqueResult();
			anamnese = new AnamneseGeral();
			anamnese.setAnimal(animal);
			anamnese.setAntecedentesMorbidos(antecedentesMorbidos);
			anamnese.setMedidasSanitarias(medidasSanitarias);
			anamnese.setMotivoConsulta(motivoConsulta);
			dao.persist(anamnese);
		}else {
			anamnese.setAntecedentesMorbidos(antecedentesMorbidos);
			anamnese.setMedidasSanitarias(medidasSanitarias);
			anamnese.setMotivoConsulta(motivoConsulta);
			this.dao.update(anamnese);
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
