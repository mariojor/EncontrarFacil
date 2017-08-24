package br.com.encontrarfacil.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.encontrarfacil.model.Funcionario;
import br.com.encontrarfacil.util.FabricaDeConexoesSingleton;

public class CadastroDAO {

	
	
	/**
	 * Cadastro de novos funcionarios
	 * 
	 * @param funcionario
	 * @throws Exception
	 */
	public void cadastrar(Funcionario funcionario) throws Exception {

		EntityManager em = FabricaDeConexoesSingleton.getInstance();

		em.getTransaction().begin();
		em.persist(funcionario);
		em.getTransaction().commit();

	}
	
	
	/**
	 * Carregar todos os funcionarios cadastrados
	 * 
	 * @return
	 */
	public List<Funcionario> listarTodosUsuarios() throws Exception {
		EntityManager em = FabricaDeConexoesSingleton.getInstance();
		
		em.getTransaction().begin();
		
		TypedQuery<Funcionario> query = em.createQuery("SELECT f FROM Funcionario f",Funcionario.class);
		return  query.getResultList();
	}

}
