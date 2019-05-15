package br.com.siseduca.model;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity
public class Aluno extends Pessoa implements Serializable {

	private static final long serialVersionUID = 1L;

	private String matricula;
	private Turma2 turma;

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public Turma2 getTurma() {
		return turma;
	}

	public void setTurma(Turma2 turma) {
		this.turma = turma;
	}



	public void consultarNota() {
		System.out.println("Consultando nota...");
	}

	@Override
	public String toString() {
		return "Aluno [matricula=" + matricula + ", turma=" + turma + ", getId()=" + getId()
				+ ", getNome()=" + getNome() + ", getEmail()=" + getEmail() + ", getCpf()=" + getCpf()
				+ ", getDataNascimento()=" + getDataNascimento() + ", getEndereco()=" + getEndereco()
				+ ", getTelefone()=" + getTelefone() + ", getDataCadastro()=" + getDataCadastro().getTime()
				+ ", getClass()=" + getClass() + "]";
	}

}
