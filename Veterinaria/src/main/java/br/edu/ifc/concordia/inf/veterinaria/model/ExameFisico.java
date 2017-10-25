package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Table(name="examefisico")
@Entity(name="examefisico")
public class ExameFisico implements Serializable{
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
	public String getConciencia() {
		return conciencia;
	}
	public void setConciencia(String conciencia) {
		this.conciencia = conciencia;
	}
	public String getTempoPreenchimento() {
		return tempoPreenchimento;
	}
	public void setTempoPreenchimento(String tempoPreenchimento) {
		this.tempoPreenchimento = tempoPreenchimento;
	}
	public String getTemperatura() {
		return temperatura;
	}
	public void setTemperatura(String temperatura) {
		this.temperatura = temperatura;
	}
	public String getEscoreCorporal() {
		return escoreCorporal;
	}
	public void setEscoreCorporal(String escoreCorporal) {
		this.escoreCorporal = escoreCorporal;
	}
	public String getFreqCardiaca() {
		return freqCardiaca;
	}
	public void setFreqCardiaca(String freqCardiaca) {
		this.freqCardiaca = freqCardiaca;
	}
	public String getMedResidente() {
		return medResidente;
	}
	public void setMedResidente(String medResidente) {
		this.medResidente = medResidente;
	}
	public String getMicropapulas() {
		return micropapulas;
	}
	public void setMicropapulas(String micropapulas) {
		this.micropapulas = micropapulas;
	}
	public String getFreqRespiratoria() {
		return freqRespiratoria;
	}
	public void setFreqRespiratoria(String freqRespiratoria) {
		this.freqRespiratoria = freqRespiratoria;
	}
	public String getPostura() {
		return postura;
	}
	public void setPostura(String postura) {
		this.postura = postura;
	}
	public String getColoracao() {
		return coloracao;
	}
	public void setColoracao(String coloracao) {
		this.coloracao = coloracao;
	}
	public String getHidratacao() {
		return hidratacao;
	}
	public void setHidratacao(String hidratacao) {
		this.hidratacao = hidratacao;
	}
	public String getPulso() {
		return pulso;
	}
	public void setPulso(String pulso) {
		this.pulso = pulso;
	}
	public String getAuscCardiaca() {
		return auscCardiaca;
	}
	public void setAuscCardiaca(String auscCardiaca) {
		this.auscCardiaca = auscCardiaca;
	}
	public String getAuscRespiratoria() {
		return auscRespiratoria;
	}
	public void setAuscRespiratoria(String auscRespiratoria) {
		this.auscRespiratoria = auscRespiratoria;
	}
	public String getPalpacao() {
		return palpacao;
	}
	public void setPalpacao(String palpacao) {
		this.palpacao = palpacao;
	}
	public String getPercussao() {
		return percussao;
	}
	public void setPercussao(String percussao) {
		this.percussao = percussao;
	}
	public String getLinfonodos() {
		return linfonodos;
	}
	public void setLinfonodos(String linfonodos) {
		this.linfonodos = linfonodos;
	}
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	public String getSuspeita() {
		return suspeita;
	}
	public void setSuspeita(String suspeita) {
		this.suspeita = suspeita;
	}
	public Long getId() {
		return id;
	}
	private String conciencia;
	private String tempoPreenchimento;
	private String temperatura;
	private String escoreCorporal;
	private String freqCardiaca;
	private String medResidente;
	private String micropapulas;
	private String freqRespiratoria;
	private String postura;
	private String coloracao;
	private String hidratacao;
	private String pulso;
	private String auscCardiaca;
	private String auscRespiratoria;
	private String palpacao;
	private String percussao;
	private String linfonodos;
	private String observacoes;
	private String suspeita;
}
