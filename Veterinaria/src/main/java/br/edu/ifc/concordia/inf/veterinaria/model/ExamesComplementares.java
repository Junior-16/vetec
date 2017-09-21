package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
<<<<<<< HEAD
=======
import javax.persistence.OneToOne;
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
import javax.persistence.Table;
@Table(name="examescomplementares")
@Entity(name="examescomplementares")
public class ExamesComplementares implements Serializable{
	private static final long serialVersionUID = 1L;
<<<<<<< HEAD
	
=======
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
<<<<<<< HEAD
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


=======
	@OneToOne
	private Animal animal;
	private String raspado; 
	public Animal getAnimal() {
		return animal;
	}
	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
	public String getRaspado() {
		return raspado;
	}
	public void setRaspado(String raspado) {
		this.raspado = raspado;
	}
<<<<<<< HEAD
=======
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
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
	public String getUrina() {
		return urina;
	}
	public void setUrina(String urina) {
		this.urina = urina;
	}
<<<<<<< HEAD

=======
	public String getHistopatológico() {
		return histopatológico;
	}
	public void setHistopatológico(String histopatológico) {
		this.histopatológico = histopatológico;
	}
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
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
<<<<<<< HEAD
	public String getLiquidos() {
		return liquidos;
	}
	public void setLiquidos(String liquidos) {
		this.liquidos = liquidos;
=======
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
>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
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
<<<<<<< HEAD
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
	
=======
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

>>>>>>> 295ac4c1c7c76d7f477b406a232385159eaed60a
}
