package br.com.encontrarfacil.fachada;

import java.util.List;

import br.com.encontrarfacil.model.Funcionario;

public interface IFachada {
	
	public void cadastrar(Funcionario funcionario);
	public List<Funcionario> listarTodosUsuarios();
	
}
