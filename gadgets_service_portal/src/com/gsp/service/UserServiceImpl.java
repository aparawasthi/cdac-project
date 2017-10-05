package com.gsp.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gsp.dao.AgentDao;
import com.gsp.dao.ProductDao;
import com.gsp.dao.RequestDao;
import com.gsp.dao.UserDao;
import com.gsp.pojos.Agent;
import com.gsp.pojos.Request;
import com.gsp.pojos.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao udao;
	@Autowired
	private RequestDao rdao;
	@Autowired
	private AgentDao adao;
	@Autowired
	private ProductDao pdao;
	
	@Override
	public User signUpUser(User u) {
		return udao.registerUser(u);
	}
	
	@Override
	@Transactional(readOnly = true)
	public User validateUser(String em, String pass) {
		User u = udao.validateUser(em, pass);
		return u;
	}

	@Override
	public String updateUser(User u) {
		udao.updateUser(u);
		return "User with name "+u.getName()+" updated";
	}

	@Override
	public String deleteUser(Integer id) {
		return udao.deleteUser(id);
	}

	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		return udao.getUserById(id);
	}

	@Override
	public String fileRequest(Request r) {
		r.setStatus("Request Placed");
		Request r1 = rdao.fileRequest(r);
		if(r1.getId()==null)
			return "Request filing failed";
		return "Request succesfully placed";
	}

	@Override
	public String deleteRequest(Integer id) {
		return rdao.deleteRequest(id);
	}

	@Override
	public String trackRequest(Integer reqId) {
		return rdao.getStatusById(reqId);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Request> getRequestList(User u) {
		
		return rdao.listRequestByUserId(u);
	}
	
	@Override
	public List<String> getCompanies() {
		return adao.getAllCompanies();
	}

	@Override
	public Set<String> getProductTypes(Agent a) {
		return pdao.getProductTypeByCompany(a);
	}

	@Override
	public Set<String> getModels(String productType) {
		return pdao.getModelsByType(productType);
	}

	@Override
	public Request getRequestById(Integer id) {
		return rdao.getRequestById(id);
	}

	@Override
	public String giveFeedback(String feedback, Integer reqId) {
		Request r = rdao.getRequestById(reqId);
		r.setFeedback(feedback);
		rdao.updateRequest(r);
		return "Feedback updated";
	}

	@Override
	public User checkIfUserPresent(String em) {
		return udao.checkEntryIfPresent(em);
	}
}
