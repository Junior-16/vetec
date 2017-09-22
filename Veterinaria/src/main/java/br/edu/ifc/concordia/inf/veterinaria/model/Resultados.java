package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name = "resultados")
@Table(name = "resultados")
public class Resultados implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private Long animalId;
	public Long getAnimal() {
		return animalId;
	}
	public void setAnimal(Long animal) {
		this.animalId = animal;
	}
	public String getRaio() {
		return raio;
	}
	public void setRaio(String raio) {
		this.raio = raio;
	}
	public String getUltrasson() {
		return ultrasson;
	}
	public void setUltrasson(String ultrasson) {
		this.ultrasson = ultrasson;
	}
	public String getnExame() {
		return nExame;
	}
	public void setnExame(String nExame) {
		this.nExame = nExame;
	}
	public String getRegiao() {
		return regiao;
	}
	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getLaudo() {
		return laudo;
	}
	public void setLaudo(String laudo) {
		this.laudo = laudo;
	}
	public String getDiagnostico() {
		return diagnostico;
	}
	public void setDiagnóstico(String diagnostico) {
		this.diagnostico = diagnostico;
	}
	public String getTratamento() {
		return tratamento;
	}
	public void setTratamento(String tratamento) {
		this.tratamento = tratamento;
	}
	public String getTratamentoDomiciliar() {
		return tratamentoDomiciliar;
	}
	public void setTratamentoDomiciliar(String tratamentoDomiciliar) {
		this.tratamentoDomiciliar = tratamentoDomiciliar;
	}
	public String getRetorno() {
		return retorno;
	}
	public void setRetorno(String retorno) {
		this.retorno = retorno;
	}
	public String getInternado() {
		return internado;
	}
	public void setInternado(String internado) {
		this.internado = internado;
	}
	public String getAlta() {
		return alta;
	}
	public void setAlta(String alta) {
		this.alta = alta;
	}
	public String getObito() {
		return obito;
	}
	public void setObito(String obito) {
		this.obito = obito;
	}
	public String getEutanasia() {
		return eutanasia;
	}
	public void setEutanasia(String eutanasia) {
		this.eutanasia = eutanasia;
	}
	public String getResponsavel() {
		return responsavel;
	}
	public void setResponsável(String responsavel) {
		this.responsavel = responsavel;
	}
	private String raio;
	private String ultrasson;
	private String nExame; 
	private String regiao; 
	private String data;
	private String laudo; 
	private String diagnostico; 
	private String tratamento;
	private String tratamentoDomiciliar; 
	private String retorno; 
	private String internado; 
	private String alta; 
	private String obito; 
	private String eutanasia; 
	private String responsavel;
}
