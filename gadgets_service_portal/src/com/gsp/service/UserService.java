package com.gsp.service;

import java.util.List;
import java.util.Set;

import com.gsp.pojos.Agent;
import com.gsp.pojos.Request;
import com.gsp.pojos.User;

public interface UserService {
	User signUpUser(User u);
	User validateUser(String em,String pass);
	String updateUser(User u);
	String deleteUser(Integer id);
	User getUserById(Integer id);
	String fileRequest(Request r);
	String deleteRequest(Integer id);
	Request getRequestById(Integer id);
	String giveFeedback(String feedback,Integer reqId);
	String trackRequest(Integer id);
	List<Request> getRequestList(User u);
	List<String> getCompanies();
	Set<String> getProductTypes(Agent a);
	Set<String> getModels(String productType);
	User checkIfUserPresent(String em);
	
}
