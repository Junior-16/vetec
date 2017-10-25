package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Table(name="examescomplementares")
@Entity(name="examescomplementares")
public class ExamesComplementares implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	private Long animalId;
	private String raspado; 
	private String bioquimicos;
	private String citopatologico;  
	private String urina;
	private String histopatologico;  
	private String ECG; 
	private String ultrassonografia; 
	private String swab;  
	private String radiografia;  
	private String liquidos;  
	private String coproparasitologico;
	private String hemograma;
	private String outros;


	public String getRaspado() {
		return raspado;
	}
	public void setRaspado(String raspado) {
		this.raspado = raspado;
	}
	public String getUrina() {
		return urina;
	}
	public void setUrina(String urina) {
		this.urina = urina;
	}
	public String getECG() {
		return ECG;
	}
	public void setECG(String ECG) {
		this.ECG = ECG;
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
	public String getLiquidos() {
		return liquidos;
	}
	public void setLiquidos(String liquidos) {
		this.liquidos = liquidos;
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
	public Long getAnimalId() {
		return animalId;
	}
	public void setAnimalId(Long animalId) {
		this.animalId = animalId;
	}
	public String getBioquimicos() {
		return bioquimicos;
	}
	public void setBioquimicos(String bioquimicos) {
		this.bioquimicos = bioquimicos;
	}
	public String getCitopatologico() {
		return citopatologico;
	}
	public void setCitopatologico(String citopatologico) {
		this.citopatologico = citopatologico;
	}
	public String getHistopatologico() {
		return histopatologico;
	}
	public void setHistopatologico(String histopatologico) {
		this.histopatologico = histopatologico;
	}
	public String getCoproparasitologico() {
		return coproparasitologico;
	}
	public void setCoproparasitologico(String coproparasitologico) {
		this.coproparasitologico = coproparasitologico;
	}

}
