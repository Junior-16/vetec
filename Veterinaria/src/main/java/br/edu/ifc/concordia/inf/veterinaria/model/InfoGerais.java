package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name = "InfoGerais")
@Table(name = "InfoGerais")
public class InfoGerais implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String ficha_clinica;
	private String data;
	private String setor;
	private String aptidao;
	private String cidade;
	@OneToOne
	private Animal animal;
	
	public String getFicha_clinica() {
		return ficha_clinica;
	}
	public void setFicha_clinica(String ficha_clinica) {
		this.ficha_clinica = ficha_clinica;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getSetor() {
		return setor;
	}
	public void setSetor(String setor) {
		this.setor = setor;
	}
	public String getAptidao() {
		return aptidao;
	}
	public void setAptidao(String aptidao) {
		this.aptidao = aptidao;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public Animal getAnimal() {
		return animal;
	}
	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	
}
