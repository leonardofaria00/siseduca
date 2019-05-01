package br.com.sgedu.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.sgedu.model.Aluno;

@Repository
@Transactional
public class ProdutoDao {

	@PersistenceContext
	private EntityManager manager;

	public void salvar(Aluno aluno) {
		System.out.println("Salvando " + aluno);
		manager.persist(aluno);
	}

}
