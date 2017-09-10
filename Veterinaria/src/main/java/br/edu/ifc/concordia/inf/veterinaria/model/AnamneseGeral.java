package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name = "AnamneseGeral")
@Table(name = "AnamneseGeral")
public class AnamneseGeral implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String motivoConsulta;
	private String antecedentesMorbidos;
	private String medidasSanitarias;
	
	@OneToOne
	private Animal animal;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMotivoConsulta() {
		return motivoConsulta;
	}
	public void setMotivoConsulta(String motivoConsulta) {
		this.motivoConsulta = motivoConsulta;
	}
	public Animal getAnimal() {
		return animal;
	}
	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	public String getAntecedentesMorbidos() {
		return antecedentesMorbidos;
	}
	public void setAntecedentesMorbidos(String antecedentesMorbidos) {
		this.antecedentesMorbidos = antecedentesMorbidos;
	}
	public String getMedidasSanitarias() {
		return medidasSanitarias;
	}
	public void setMedidasSanitarias(String medidasSanitarias) {
		this.medidasSanitarias = medidasSanitarias;
	}
}
