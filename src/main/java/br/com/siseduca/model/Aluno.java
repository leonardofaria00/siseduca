package br.com.siseduca.model;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity(name = "Aluno")
public class Aluno extends Pessoa implements Serializable {

	private static final long serialVersionUID = 1L;

	private String matricula;

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public void consultarNota() {
		System.out.println("Consultando nota...");
	}

	@Override
	public String toString() {
		return "Aluno [matricula=" + matricula + ", getId()=" + getId() + ", getNome()=" + getNome() + ", getEmail()="
				+ getEmail() + ", getCpf()=" + getCpf() + ", getDataNascimento()=" + getDataNascimento()
				+ ", getEndereco()=" + getEndereco() + ", getTelefone()=" + getTelefone() + ", getDataCadastro()="
				+ getDataCadastro().getTime() + ", getClass()=" + getClass() + "]";
	}

}
