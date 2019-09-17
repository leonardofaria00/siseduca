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

import br.com.siseduca.dao.PessoaDao;
import br.com.siseduca.model.Pessoa;

@Controller
@RequestMapping("/pessoas")
public class PessoaController {

	@Autowired
	private PessoaDao dao;

	@RequestMapping(method = RequestMethod.GET)
	@Cacheable(value = "pessoaHome")
	public ModelAndView index() {
		System.out.println("Acessando a Home Pessoa.");
		List<Pessoa> pessoas = dao.getPessoas();
		ModelAndView view = new ModelAndView("pessoa/lista");
		view.addObject("pessoa", pessoas);
		return view;
	}

	@RequestMapping("/form")
	public ModelAndView form() {
		System.out.println("Acessando o formulário do Pessoa");
		ModelAndView view = new ModelAndView("pessoa/form");
		return view;
	}

	@RequestMapping("/add")
	@CacheEvict(value = "pessoaHome", allEntries = true)
	public ModelAndView salvar(Pessoa pessoa, RedirectAttributes redirectAttributes) {
		if (pessoa.getNome() == null || pessoa.getNome() == "") {
			System.out.println("Nome vazio");
			redirectAttributes.addFlashAttribute("campoInvalido", "Informe um nome válido!");
			return new ModelAndView("redirect:/pessoa/form");
		}

		dao.salvar(pessoa);
		redirectAttributes.addFlashAttribute("sucesso", "Pessoa cadastrado com sucesso!");
		return new ModelAndView("redirect:/pessoas");
	}

	@RequestMapping("/lista/{id}")
	public ModelAndView visualiza(Pessoa id) {
		Pessoa pessoa = dao.getPessoaPorId(id);
		ModelAndView view = new ModelAndView("pessoa/visualiza");
		view.addObject("pessoa", pessoa);
		System.out.println("Listando Pessoa: " + pessoa);
		return view;
	}

	@RequestMapping("/delete/{id}")
	@CacheEvict(value = "pessoaHome", allEntries = true)
	public ModelAndView removePessoa(Pessoa pessoa, RedirectAttributes redirectAttributes) {
		System.out.println("Removendo Pessoa:" + pessoa);
		dao.remover(pessoa);
		redirectAttributes.addFlashAttribute("sucesso", "Pessoa removido com sucesso!");
		return new ModelAndView("redirect:/pessoas");
	}

}
