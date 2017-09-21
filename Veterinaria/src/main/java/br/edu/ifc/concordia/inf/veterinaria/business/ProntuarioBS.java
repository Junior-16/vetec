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
import br.edu.ifc.concordia.inf.veterinaria.model.ExameFisico;
import br.edu.ifc.concordia.inf.veterinaria.model.ExamesComplementares;
import br.edu.ifc.concordia.inf.veterinaria.model.InfoGerais;
import br.edu.ifc.concordia.inf.veterinaria.model.Proprietario;
import br.edu.ifc.concordia.inf.veterinaria.model.Resultados;
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
		criteria.add(Restrictions.eq("animalId", id));
		return (AnamneseGeral) criteria.uniqueResult();
		
	}
	
	public AnamneseEspecial anamneseEspecial(Long id) {
		Criteria criteria = this.dao.newCriteria(AnamneseEspecial.class);
		criteria.add(Restrictions.eq("animalId", id));
		return (AnamneseEspecial)criteria.uniqueResult();
	}
	
	public ExameFisico exameFisico(Long id) {
		Criteria criteria = this.dao.newCriteria(ExameFisico.class);
		criteria.add(Restrictions.eq("animalId", id));
		return (ExameFisico) criteria.uniqueResult();
	}
	
	public ExamesComplementares examesComplementares(Long id) {
		Criteria criteria = this.dao.newCriteria(ExamesComplementares.class);
		criteria.add(Restrictions.eq("animalId", id));
		return (ExamesComplementares) criteria.uniqueResult();
	}
	
	public Resultados resultados(Long id) {
		Criteria criteria = this.dao.newCriteria(Resultados.class);
		criteria.add(Restrictions.eq("animalId",id));
		return (Resultados) criteria.uniqueResult();
	}
	
	//Setar informações e salvar no banco de dados
	public void anamneseGeral(AnamneseGeral anamnese) {
		if(this.anamneseGeral(anamnese.getAnimal()) == null) {
			this.dao.persist(anamnese);
		}else {
			AnamneseGeral anamnesegeral = this.anamneseGeral(anamnese.getAnimal());
			anamnesegeral.setAntecedentesMorbidos(anamnese.getAntecedentesMorbidos());
			anamnesegeral.setMedidasSanitarias(anamnese.getMedidasSanitarias());
			anamnesegeral.setMotivoConsulta(anamnese.getMotivoConsulta());
			anamnesegeral.setAnimal(anamnese.getAnimal());
			dao.update(anamnesegeral);
		}

		this.validate();
	}
	
	public void anamneseEspecial(AnamneseEspecial anamnese) {
		if(this.anamneseEspecial(anamnese.getAnimal()) == null) {
			this.dao.persist(anamnese);
		}else {
			AnamneseEspecial anamneseEspecial = this.anamneseEspecial(anamnese.getAnimal());
			anamneseEspecial.setPeleAnexos(anamnese.getPeleAnexos());
			anamneseEspecial.setSistemaDigestivo(anamnese.getSistemaDigestivo());
			anamneseEspecial.setSistemaLocomotor(anamnese.getSistemaLocomotor());
			anamneseEspecial.setSistemaNervoso(anamnese.getSistemaNervoso());
			anamneseEspecial.setSistemaReprodutivo(anamnese.getSistemaReprodutivo());
			anamneseEspecial.setSistemaRespiratorio(anamnese.getSistemaRespiratorio());
			anamneseEspecial.setSistemaUrinario(anamnese.getSistemaUrinario());
			anamneseEspecial.setSistemaVisual(anamnese.getSistemaVisual());
			anamneseEspecial.setAnimal(anamnese.getAnimal());
			this.dao.update(anamneseEspecial);
		}
		this.validate();
	}
	
	
	public void exameFisico(ExameFisico exame) {
		if(this.exameFisico(exame.getAnimal()) == null) {
			this.dao.persist(exame);
		}else {
			ExameFisico exameFisico = this.exameFisico(exame.getAnimal());
			exameFisico.setAuscCardiaca(exame.getAuscCardiaca());
			exameFisico.setAuscRespiratoria(exame.getAuscRespiratoria());
			exameFisico.setColoracao(exame.getColoracao());
			exameFisico.setConciencia(exame.getConciencia());
			exameFisico.setEscoreCorporal(exame.getEscoreCorporal());
			exameFisico.setFreqCardiaca(exame.getFreqCardiaca());
			exameFisico.setFreqRespiratoria(exame.getFreqRespiratoria());
			exameFisico.setHidratacao(exame.getHidratacao());
			exameFisico.setLinfonodos(exame.getLinfonodos());
			exameFisico.setMedResidente(exame.getMedResidente());
			exameFisico.setMicropapulas(exame.getMicropapulas());
			exameFisico.setObservacoes(exame.getObservacoes());
			exameFisico.setPalpacao(exame.getPalpacao());
			exameFisico.setPercussao(exame.getPercussao());
			exameFisico.setPostura(exame.getPostura());
			exameFisico.setPulso(exame.getPulso());
			exameFisico.setSuspeita(exame.getSuspeita());
			exameFisico.setTemperatura(exame.getTemperatura());
			exameFisico.setTempoPreenchimento(exame.getTempoPreenchimento());
			exameFisico.setAnimal(exame.getAnimal());
			this.dao.update(exameFisico);
		}
		this.validate();
	}
	public void examesComplementares(ExamesComplementares exames) {
		if(examesComplementares(exames.getAnimalId()) == null) {
			dao.persist(exames);
		}else {
			ExamesComplementares exame = this.examesComplementares(exames.getAnimalId());
			exame.setBioquimicos(exames.getBioquimicos());
			exame.setCitopatologico(exames.getCitopatologico());
			exame.setECG(exames.getECG());
			exame.setHistopatologico(exames.getHistopatologico());
			exame.setLiquidos(exames.getLiquidos());
			exame.setRadiografia(exames.getRadiografia());
			exame.setRaspado(exames.getRaspado());
			exame.setSwab(exames.getSwab());
			exame.setUltrassonografia(exames.getUltrassonografia());
			exame.setUrina(exames.getUrina());
			exame.setHemograma(exames.getHemograma());
			exame.setOutros(exames.getOutros());
			exame.setAnimalId(exames.getAnimalId());
			this.dao.update(exame);
		}
		this.validate(); 
	}
	
	public void resultados(Resultados resultados) {
		if(this.resultados(resultados.getAnimal()) == null) {
			dao.persist(resultados);
		}else {
			Resultados result = this.resultados(resultados.getAnimal());
			result.setAlta(resultados.getAlta());
			result.setData(resultados.getData());
			result.setDiagnóstico(resultados.getDiagnostico());
			result.setEutanasia(resultados.getEutanasia());
			result.setInternado(resultados.getInternado());
			result.setLaudo(resultados.getLaudo());
			result.setnExame(resultados.getnExame());
			result.setObito(resultados.getObito());
			result.setRaio(resultados.getRaio());
			result.setRegiao(resultados.getRegiao());
			result.setResponsável(resultados.getResponsavel());
			result.setRetorno(resultados.getRetorno());
			result.setTratamento(resultados.getTratamento());
			result.setTratamentoDomiciliar(resultados.getTratamentoDomiciliar());
			result.setUltrasson(resultados.getUltrasson());
			result.setAnimal(resultados.getAnimal());
			this.dao.update(result);
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
