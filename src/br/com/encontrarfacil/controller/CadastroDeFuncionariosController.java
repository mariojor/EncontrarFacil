package br.com.encontrarfacil.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.encontrarfacil.fachada.Fachada;
import br.com.encontrarfacil.fachada.IFachada;
import br.com.encontrarfacil.model.Endereco;
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
		return "formulario";

	}

	@RequestMapping("/cadastroDeFuncionario")
	public String cadastroDeFuncionario(Model mv, Funcionario funcionario, Endereco endereco) {

		cadastrar(funcionario, endereco);

		List<Funcionario> listaComFuncionarios = getLista();

		mv.addAttribute("lista", listaComFuncionarios);

		System.out.println("Lista");

		return "listaDeFuncionariosCadastrados";

	}

	private List<Funcionario> getLista() {
		
		return  fachada.listarTodosUsuarios();
	}

	private void cadastrar(Funcionario funcionario, Endereco endereco) {

		Endereco end = new Endereco();
		end.setCidade(endereco.getCidade());
		end.setCodigoPostal(endereco.getCodigoPostal());
		
		funcionario.setEndereco(end);
		
		fachada.cadastrar(funcionario);

	}

}
