package br.com.sgedu.entity;

public class Aluno extends Usuario implements InterfaceUsuario {
	public Integer matricula;

	public Integer getMatricula() {
		return matricula;
	}

	public void setMatricula(Integer matricula) {
		this.matricula = matricula;
	}

	@Override
	public void registra() {
		// TODO Auto-generated method stub

	}

	@Override
	public Usuario consultar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void alterar() {
		// TODO Auto-generated method stub

	}

	@Override
	public void excluir() {
		// TODO Auto-generated method stub

	}

	@Override
	public void getUsuario() {
		System.out.println("Usuário: " + this.getNome());
		System.out.println("Id: " + this.getId());
		System.out.println("Matrícula: " + this.getMatricula());
		System.out.println("CPF: " + this.getCpf());
		System.out.println("Telefone: " + this.getTelefone());
		System.out.println("Endereço: " + this.getEndereco());
		System.out.println("Sexo: " + this.getSexo());
	}

}
