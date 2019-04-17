package br.com.sgedu.main;

import br.com.sgedu.bean.AlunoBean;
import br.com.sgedu.entity.Aluno;

public class TestaProjeto {
	public static void main(String[] args) {

		Aluno aluno = new Aluno();
		aluno.setNome("Leonardo");
		aluno.setMatricula("201621108");
		aluno.setCpf("021.185.851-01");
		aluno.setEndereco("QNN 04 Conjunto B");
		aluno.setTelefone("61 99353-2946");
		aluno.setSexo("M");

		AlunoBean bean = new AlunoBean();
		bean.registra();
	}
}
