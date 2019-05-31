package br.com.siseduca.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.siseduca.dao.ProdutoDao;
import br.com.siseduca.model.Aluno;

@Controller
@RequestMapping("/alunos")
public class AlunoController {

	@Autowired
	private ProdutoDao dao;

	@RequestMapping(method = RequestMethod.GET)
	@Cacheable(value = "alunoHome")
	public ModelAndView index() {
		System.out.println("Chamando lista Aluno");
		List<Aluno> alunos = dao.getAlunos();
		ModelAndView view = new ModelAndView("aluno/lista");
		view.addObject("alunos", alunos);
		return view;
	}

	@RequestMapping("/form")
	public ModelAndView form() {
		System.out.println("Chamando form Aluno");
		ModelAndView view = new ModelAndView("aluno/form");
		return view;
	}

	@RequestMapping("/add")
	@CacheEvict(value = "alunoHome", allEntries = true)
	public ModelAndView salvar(Aluno aluno, RedirectAttributes redirectAttributes) {
//		if (aluno.getNome() == null || aluno.getNome() == "")
//			return new ModelAndView("redirect:/alunos/form");

		dao.salvar(aluno);
		redirectAttributes.addFlashAttribute("sucesso", "Aluno cadastrado com sucesso!");
		return new ModelAndView("redirect:/alunos");
	}

	@RequestMapping("/lista/{id}")
	public ModelAndView visualiza(Aluno id) {
		Aluno aluno = dao.getAlunoPorId(id);
		System.out.println(aluno);
		ModelAndView view = new ModelAndView("aluno/visualiza");
		view.addObject("aluno", aluno);
		return view;
	}

	@RequestMapping("/delete/{id}")
	public ModelAndView removeAluno(Aluno aluno) {
		dao.remover(aluno);
		ModelAndView view = new ModelAndView("aluno/sucesso");
		return view;
	}

}
