package br.edu.ifc.concordia.inf.veterinaria.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Table(name="retorno")
@Entity(name="retorno")
public class Retorno implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String anamnese;
	public String getAnamnese() {
		return anamnese;
	}
	public void setAnamnese(String anamnese) {
		this.anamnese = anamnese;
	}
	public ExameFisico getExameFisico() {
		return exameFisico;
	}
	public void setExameFisico(ExameFisico exameFisico) {
		this.exameFisico = exameFisico;
	}
	public ExamesComplementares getExamesComplementares() {
		return examesComplementares;
	}
	public void setExamesComplementares(ExamesComplementares examesComplementares) {
		this.examesComplementares = examesComplementares;
	}
	public Resultados getResultados() {
		return resultados;
	}
	public void setResultados(Resultados resultados) {
		this.resultados = resultados;
	}
	 
	@OneToOne
	private ExameFisico exameFisico;
	@OneToOne
	private ExamesComplementares examesComplementares;
	@OneToOne
	private Resultados resultados;

	private String date;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
