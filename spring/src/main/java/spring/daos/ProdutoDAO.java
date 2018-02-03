package spring.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.models.Produto;

@Repository
@Transactional
public class ProdutoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Produto produto) {
		manager.persist(produto);
	}
	
	public List<Produto> listar(){
		List<Produto> produtos = manager.createQuery("select p from Produto p", Produto.class).getResultList();
		return produtos;
	}
}
