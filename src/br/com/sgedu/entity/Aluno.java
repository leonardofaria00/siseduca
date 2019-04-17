package br.com.sgedu.entity;

import javax.persistence.Entity;

@Entity
public class Aluno extends Usuario {

	private String matricula;

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

}
