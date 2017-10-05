package com.gsp.service;

import java.util.List;

import com.gsp.pojos.Agent;
import com.gsp.pojos.Product;

public interface AdminService {
	String addAgent(Agent a);
	String updateAgent(Agent a);
	List<Agent> getAllAgents();
	List<Product> getProducts(Agent a);
	String addProduct(Product p);
	Agent getAgentById(Integer aId);

}
