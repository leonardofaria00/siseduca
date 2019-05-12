package br.com.sgedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.sgedu.dao.ProdutoDao;
import br.com.sgedu.model.Aluno;

@Controller
@RequestMapping("/alunos")
public class AlunoController {

	@Autowired
	private ProdutoDao dao;

	@RequestMapping(method = RequestMethod.GET)
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
	public ModelAndView salvar(Aluno aluno, RedirectAttributes redirectAttributes) {
		dao.salvar(aluno);
		redirectAttributes.addFlashAttribute("sucesso", "Aluno cadastrado com sucesso!");
//		ModelAndView view = new ModelAndView("aluno/sucesso");
//		return view;
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
