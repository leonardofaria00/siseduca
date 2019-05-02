package br.com.sgedu.model;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity
public class Aluno extends Pessoa implements Serializable {

	private static final long serialVersionUID = 1L;

	private String matricula;
	private Turma turma;
	private Materia materia;

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public Materia getMateria() {
		return materia;
	}

	public void setMateria(Materia materia) {
		this.materia = materia;
	}

	public void consultarNota() {
		System.out.println("Consultando nota...");
	}

	@Override
	public String toString() {
		return "Aluno [matricula=" + matricula + ", turma=" + turma + ", materia=" + materia + ", getId()=" + getId()
				+ ", getNome()=" + getNome() + ", getEmail()=" + getEmail() + ", getCpf()=" + getCpf()
				+ ", getDataNascimento()=" + getDataNascimento() + ", getEndereco()=" + getEndereco()
				+ ", getTelefone()=" + getTelefone() + ", getDataCadastro()=" + getDataCadastro().getTime()
				+ ", getClass()=" + getClass() + "]";
	}

}
