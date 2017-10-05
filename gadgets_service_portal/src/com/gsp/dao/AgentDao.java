package com.gsp.dao;

import java.util.List;

import com.gsp.pojos.Agent;

public interface AgentDao {
	Agent addAgent(Agent a);
	Agent updateAgent(Agent a);
	Agent validateAgent(String em,String pass);
	List<Agent> getAllAgents();
	Agent getAgentById(Integer id);
	List<String> getAllCompanies( );
	Agent getAgentByCompany(String CompanyName);
}	
