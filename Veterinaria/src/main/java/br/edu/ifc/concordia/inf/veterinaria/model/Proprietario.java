package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity(name = "proprietario")
@Table(name = "proprietario")
public class Proprietario implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@OneToMany(targetEntity=Animal.class, mappedBy="proprietario", fetch=FetchType.LAZY)
	private List<Animal> animais;
	
	private String cep;
	private String cpf;
	private String endereco;
	private String nome;
	private String profissao;
	private String referencias;
	private String telefone;
	
	public List<Animal> getAnimais() {
		return animais;
	}
	public String getCep() {
		return cep;
	}
	public String getCpf() {
		return cpf;
	}
	public String getEndereco() {
		return endereco;
	}
	public Long getId() {
		return id;
	}
	public String getNome() {
		return nome;
	}
	public String getProfissao() {
		return profissao;
	}
	public String getReferencias() {
		return referencias;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}
	public void setReferencias(String referencias) {
		this.referencias = referencias;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
}
