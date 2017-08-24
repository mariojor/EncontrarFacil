package br.com.encontrarfacil.fachada;

import java.util.ArrayList;
import java.util.List;

import br.com.encontrarfacil.dao.CadastroDAO;
import br.com.encontrarfacil.model.Funcionario;

public class Fachada implements IFachada {

	private static Fachada instancia;

	public static Fachada getInstancia() {
		if (instancia == null) {
			instancia = new Fachada();
		}
		return instancia;
	}

	public void cadastrar(Funcionario funcionario) {

		CadastroDAO dao = new CadastroDAO();
		
		try {
			dao.cadastrar(funcionario);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public List<Funcionario> listarTodosUsuarios() {
		
		CadastroDAO dao = new CadastroDAO();
		
		List<Funcionario> listaRetorno = new ArrayList<>();
		try {
			listaRetorno = dao.listarTodosUsuarios();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listaRetorno;
		
	}

}
