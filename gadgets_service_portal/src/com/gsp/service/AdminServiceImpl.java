package com.gsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gsp.dao.AgentDao;
import com.gsp.dao.ProductDao;
import com.gsp.pojos.Agent;
import com.gsp.pojos.Product;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AgentDao adao;
	
	@Autowired
	private ProductDao pdao;
	
	@Override
	public String addAgent(Agent a) {
		Agent temp=adao.addAgent(a);
		if(temp.getId()==null)
			return "Registration of agent failed";
		return "Agent registered successfully";
	}

	@Override
	public String updateAgent(Agent a) {
		Agent temp=adao.updateAgent(a);
		if(temp.getId()==null){
			return "Updation of agent failed";
		}
		return "Agent updated successfully";
	}

	@Override
	public List<Agent> getAllAgents() {
		return adao.getAllAgents();
	}

	@Override
	public List<Product> getProducts(Agent a) {
		return pdao.getProductByCompany(a);
	}

	@Override
	public String addProduct(Product p) {
		return pdao.addProduct(p);

	}

	@Override
	public Agent getAgentById(Integer aId) {
		return adao.getAgentById(aId);
	}

}
