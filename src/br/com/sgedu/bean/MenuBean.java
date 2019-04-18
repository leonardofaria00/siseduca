package br.com.sgedu.bean;

import javax.faces.bean.ManagedBean;

@ManagedBean
public class MenuBean {

	public String formAluno() {
		System.out.println("Chamanda do formulário do Aluno.");
		return "aluno?faces-redirect=true";
	}

	public String formProfessor() {
		System.out.println("Chamanda do formulário do Professor.");
		return "professor?faces-redirect=true";
	}
}
