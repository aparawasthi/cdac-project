package com.gsp.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gsp.pojos.Agent;
import com.gsp.pojos.Product;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public String addProduct(Product p) {
		factory.getCurrentSession().save(p);
		return "Product added";
	}

	@Override
	public String removeProduct(Product p) {
		int pId=p.getId();
		String status="Product deletion failed";
		if(pId!=0)
		{
		factory.getCurrentSession().remove(p);
		status ="Product with ID "+pId+" deleted successfully";
		}
		return status;
	}

	@Override
	public String updateProduct(Product p) {
		factory.getCurrentSession().update(p);
		return "Product id "+p.getId()+"updated";
	}

	@SuppressWarnings("unchecked")
	@Override
	public Set<String> getProductTypeByCompany(Agent a) {
		return (Set<String>) factory.getCurrentSession()
				.createQuery("select p.productType from Product p where p.company = :a",String.class)
				.setParameter("a",a)
				.getResultList();
	}

	@Override
	public Product getProductById(Integer id) {
		return (Product) factory.getCurrentSession().get(Product.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Set<String> getModelsByType(String productType) {
		return (Set<String>) factory.getCurrentSession()
		.createQuery("select p.modelNo from Product p where p.productType = :productType",String.class)
		.setParameter("productType",productType)
		.getResultList();
	}

	@Override
	public List<Product> getProductByCompany(Agent a) {
		return factory.getCurrentSession()
				.createQuery("select p from Product p where p.company = :a",Product.class)
				.setParameter("a",a)
				.getResultList();
	}

}
