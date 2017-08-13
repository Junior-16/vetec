package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity(name = "animal")
@Table(name = "animal")
public class Animal implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private Long id_proprietario;
	public Long getId_proprietario() {
		return id_proprietario;
	}
	public void setId_proprietario(Long id_proprietario) {
		this.id_proprietario = id_proprietario;
	}
	private String nome;
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEspecie() {
		return especie;
	}
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	public String getIdade() {
		return idade;
	}
	public void setIdade(String idade) {
		this.idade = idade;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		this.peso = peso;
	}
	public String getRaca() {
		return raca;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	public String getInfoAdd() {
		return infoAdd;
	}
	public void setInfoAdd(String infoAdd) {
		this.infoAdd = infoAdd;
	}
	private String especie;
	private String idade;
	private String sexo;
	private String peso;
	private String raca;
	private String infoAdd;
}
