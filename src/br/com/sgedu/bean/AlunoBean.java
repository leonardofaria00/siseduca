package br.com.sgedu.bean;

import java.io.Serializable;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.sgedu.dao.DAO;
import br.com.sgedu.entity.Aluno;

@ManagedBean
@ViewScoped
public class AlunoBean implements Serializable {
	private static final long serialVersionUID = 1L;

	Aluno aluno = new Aluno();

	public Aluno getAluno() {
		return aluno;
	}

	public void registra() {
		System.out.println("Registrando aluno: " + aluno.getNome());
		new DAO<Aluno>(Aluno.class).adiciona(this.aluno);
		this.aluno = new Aluno();
	}

	public List<Aluno> getAlunos() {
		System.out.println("Buscando Alunos");
		return new DAO<Aluno>(Aluno.class).listaTodos();
	}
	
	public void carregar(Aluno aluno) {
		System.out.println("Carregando aluno");
		this.aluno = aluno;
	}

}
