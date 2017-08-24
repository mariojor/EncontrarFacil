package br.com.encontrarfacil.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.encontrarfacil.fachada.Fachada;
import br.com.encontrarfacil.fachada.IFachada;
import br.com.encontrarfacil.model.Funcionario;

@Controller
public class CadastroDeFuncionariosController {
	
	IFachada fachada = Fachada.getInstancia(); 

	@RequestMapping("/show")
	public String show() {
		return "index";

	}

	@RequestMapping("/formulario")
	public String formulario() {
		System.out.println("Executando a lógica com Spring MVC");
		return "formulario";

	}

	@RequestMapping("/cadastroDeFuncionario")
	public String cadastroDeFuncionario(Model mv, Funcionario funcionario) {

		cadastrar(funcionario);

		List<Funcionario> listaComFuncionarios = getLista();

		mv.addAttribute("lista", listaComFuncionarios);

		System.out.println("Lista");

		return "listaDeFuncionariosCadastrados";

	}

	private List<Funcionario> getLista() {
		
		return  fachada.listarTodosUsuarios();
	}

	private void cadastrar(Funcionario funcionario) {

		fachada.cadastrar(funcionario);

	}

}
