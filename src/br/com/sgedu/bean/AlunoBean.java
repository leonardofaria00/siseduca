package br.com.sgedu.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.sgedu.dao.DAO;
import br.com.sgedu.entity.Aluno;

@ManagedBean
@ViewScoped
public class AlunoBean {
	Aluno aluno = new Aluno();

	public Aluno getAluno() {
		return aluno;
	}

	public void registra() {
		System.out.println("Registrando aluno: " + aluno.getNome());
		new DAO<Aluno>(Aluno.class).adiciona(this.aluno);
		this.aluno = new Aluno();
	}

}
