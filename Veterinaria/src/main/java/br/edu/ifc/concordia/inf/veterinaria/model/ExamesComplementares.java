package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Table(name="examescomplementares")
@Entity(name="examescomplementares")
public class ExamesComplementares implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@OneToOne
	private Animal animal;
	private String raspado; 
	public Animal getAnimal() {
		return animal;
	}
	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	public String getRaspado() {
		return raspado;
	}
	public void setRaspado(String raspado) {
		this.raspado = raspado;
	}
	public String getBioquímicos() {
		return bioquímicos;
	}
	public void setBioquímicos(String bioquímicos) {
		this.bioquímicos = bioquímicos;
	}
	public String getCitopatológico() {
		return citopatológico;
	}
	public void setCitopatológico(String citopatológico) {
		this.citopatológico = citopatológico;
	}
	public String getUrina() {
		return urina;
	}
	public void setUrina(String urina) {
		this.urina = urina;
	}
	public String getHistopatológico() {
		return histopatológico;
	}
	public void setHistopatológico(String histopatológico) {
		this.histopatológico = histopatológico;
	}
	public String getECG() {
		return ECG;
	}
	public void setECG(String eCG) {
		ECG = eCG;
	}
	public String getUltrassonografia() {
		return ultrassonografia;
	}
	public void setUltrassonografia(String ultrassonografia) {
		this.ultrassonografia = ultrassonografia;
	}
	public String getSwab() {
		return swab;
	}
	public void setSwab(String swab) {
		this.swab = swab;
	}
	public String getRadiografia() {
		return radiografia;
	}
	public void setRadiografia(String radiografia) {
		this.radiografia = radiografia;
	}
	public String getLíquidos() {
		return líquidos;
	}
	public void setLíquidos(String líquidos) {
		this.líquidos = líquidos;
	}
	public String getCoproparasitológico() {
		return coproparasitológico;
	}
	public void setCoproparasitológico(String coproparasitológico) {
		this.coproparasitológico = coproparasitológico;
	}
	public String getHemograma() {
		return hemograma;
	}
	public void setHemograma(String hemograma) {
		this.hemograma = hemograma;
	}
	public String getOutros() {
		return outros;
	}
	public void setOutros(String outros) {
		this.outros = outros;
	}
	private String bioquímicos;
	private String citopatológico;  
	private String urina;
	private String histopatológico;  
	private String ECG; 
	private String ultrassonografia; 
	private String swab;  
	private String radiografia;  
	private String líquidos;  
	private String coproparasitológico;
	private String hemograma;
	private String outros;

}
