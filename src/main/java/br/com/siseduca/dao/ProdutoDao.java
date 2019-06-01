package br.com.siseduca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.siseduca.model.Aluno;

@Repository
@Transactional
public class ProdutoDao {

	@PersistenceContext
	private EntityManager manager;

	public void salvar(Aluno aluno) {
		if (aluno.getId() == null)
			manager.persist(aluno);
		else
			manager.merge(aluno);
	}

	public List<Aluno> getAlunos() {
		return manager.createQuery("SELECT p FROM Aluno p WHERE status=1 ORDER BY id", Aluno.class).getResultList();
	}

	public Aluno getAlunoPorId(Aluno aluno) {
		return manager.find(Aluno.class, aluno.getId());
	}

	public void remover(Aluno aluno) {
		Aluno alunoPorId = getAlunoPorId(aluno);
		manager.remove(alunoPorId);
//		manager.createQuery("UPDATE Aluno SET status=0 WHERE id=" + alunoPorId.getId());
	}

}
