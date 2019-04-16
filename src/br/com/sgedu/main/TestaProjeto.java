package br.com.sgedu.main;

import br.com.sgedu.entity.Aluno;

public class TestaProjeto {
	public static void main(String[] args) {
		System.out.println("Iniciando Projeto.");

		Aluno aluno = new Aluno();

		aluno.setId(1);
		aluno.setMatricula(201621108);
		aluno.setNome("Leonardo Faria dos Santos");
		aluno.setCpf("021.185.851-01");
		aluno.setTelefone("61 993532946");
		aluno.setEndereco("QNN 04 Conjunto B");
		aluno.setSexo("M");

		aluno.getUsuario();

		System.out.println("##############");

	}
}
