package br.com.sgedu.dao;

import java.util.List;

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
		if (aluno.getId() == null)
			manager.persist(aluno);
		else
			manager.merge(aluno);

	}

	public List<Aluno> getAlunos() {
		return manager.createQuery("select p from Aluno p where status=1", Aluno.class).getResultList();
	}

	public Aluno getAlunoPorId(Aluno aluno) {
		System.out.println("Buscando aluno Id: " + aluno.getId());
		return manager.find(Aluno.class, aluno.getId());
	}

	public void remover(Aluno aluno) {
		Aluno alunoPorId = getAlunoPorId(aluno);
		manager.remove(alunoPorId);
//		System.out.println("UPDATE Aluno SET status=0 WHERE id=" + alunoPorId.getId());
//		manager.createQuery("UPDATE Aluno SET status=0 WHERE id=" + alunoPorId.getId());
	}

}
