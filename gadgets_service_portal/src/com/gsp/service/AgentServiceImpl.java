package com.gsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gsp.dao.AgentDao;
import com.gsp.dao.RequestDao;
import com.gsp.pojos.Agent;
import com.gsp.pojos.Request;

@Service
@Transactional
public class AgentServiceImpl implements AgentService {
	
	@Autowired
	private AgentDao adao;
	@Autowired
	private RequestDao rdao;
	
	@Override
	public String updateAgent(Agent a) {
		adao.updateAgent(a);
		return "Agent Updated Succesfully";
	}

	@Override
	public Agent validateAgent(String em, String pass) {
		Agent a = adao.validateAgent(em, pass);
		return a;
	}

	@Override
	public String reqStatusUpdate(Request r) {
		rdao.updateRequest(r);
		return "Request for user "/*+r.getUser()*/+" updated";
	}

	@Override
	public List<Request> getRequest(Agent a) {
		List<Request> lr = rdao.listRequestByCompany(a.getCompanyName());
		return lr;
	}

	@Override
	public Request getRquestById(Integer rId) {
		// TODO Auto-generated method stub
		return rdao.getRequestById(rId);
	}

	@Override
	public String updateStatus(Request r) {
		Request req = rdao.updateRequest(r);
		if(req.getId()==null)
			return "Status updation failed";
		return "Request status updated successfully";
	}

}
