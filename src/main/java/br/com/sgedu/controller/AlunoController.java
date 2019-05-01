package br.com.sgedu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.sgedu.dao.ProdutoDao;
import br.com.sgedu.model.Aluno;

@Controller
@RequestMapping("/alunos")
public class AlunoController {

	@Autowired
	private ProdutoDao dao;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		System.out.println("Chamando form Aluno");
		ModelAndView view = new ModelAndView("aluno/form");
		return view;
	}

	@RequestMapping("/add")
	public ModelAndView salvar(Aluno aluno) {
		System.out.println("Entrou no salvar " + aluno);
		dao.salvar(aluno);
		ModelAndView view = new ModelAndView("aluno/sucesso");
		return view;
	}

}
