package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name = "AnamneseEspecial")
@Table(name = "AnamneseEspecial")
public class AnamneseEspecial implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@OneToOne
	private Animal animal;
	
	public Animal getAnimal() {
		return animal;
	}
	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	private String sistemaVisual;
	private String sistemaDigestivo;
	private String sistemaUrinario;
	private String sistemaLocomotor;
	private String sistemaRespiratorio;
	private String sistemaReprodutivo;
	private String sistemaNervoso;
	private String peleAnexos;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSistemaVisual() {
		return sistemaVisual;
	}
	public void setSistemaVisual(String sistemaVisual) {
		this.sistemaVisual = sistemaVisual;
	}
	public String getSistemaDigestivo() {
		return sistemaDigestivo;
	}
	public void setSistemaDigestivo(String sistemaDigestivo) {
		this.sistemaDigestivo = sistemaDigestivo;
	}
	public String getSistemaUrinario() {
		return sistemaUrinario;
	}
	public void setSistemaUrinario(String sistemaUrinario) {
		this.sistemaUrinario = sistemaUrinario;
	}
	public String getSistemaLocomotor() {
		return sistemaLocomotor;
	}
	public void setSistemaLocomotor(String sistemaLocomotor) {
		this.sistemaLocomotor = sistemaLocomotor;
	}
	public String getSistemaRespiratorio() {
		return sistemaRespiratorio;
	}
	public void setSistemaRespiratorio(String sistemaRespiratorio) {
		this.sistemaRespiratorio = sistemaRespiratorio;
	}
	public String getSistemaReprodutivo() {
		return sistemaReprodutivo;
	}
	public void setSistemaReprodutivo(String sistemaReprodutivo) {
		this.sistemaReprodutivo = sistemaReprodutivo;
	}
	public String getSistemaNervoso() {
		return sistemaNervoso;
	}
	public void setSistemaNervoso(String sistemaNervoso) {
		this.sistemaNervoso = sistemaNervoso;
	}
	public String getPeleAnexos() {
		return peleAnexos;
	}
	public void setPeleAnexos(String peleAnexos) {
		this.peleAnexos = peleAnexos;
	}
}
