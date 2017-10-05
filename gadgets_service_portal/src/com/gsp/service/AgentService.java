package com.gsp.service;

import java.util.List;
import com.gsp.pojos.Agent;
import com.gsp.pojos.Request;

public interface AgentService {
	String updateAgent(Agent a);
	Agent validateAgent(String em,String pass);
	String reqStatusUpdate(Request r);
	List<Request> getRequest(Agent a);
	Request getRquestById(Integer rId);
	String updateStatus(Request r);
	
}
