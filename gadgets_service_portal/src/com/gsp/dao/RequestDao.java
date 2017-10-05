package com.gsp.dao;

import java.util.List;

import com.gsp.pojos.Request;
import com.gsp.pojos.User;

public interface RequestDao {
	List<Request> listRequestByUserId(User u);
	List<Request> listRequestByCompany(String company);
	String getStatusById(Integer reqId);
	Request fileRequest(Request r);
	Request updateRequest(Request r);
	String deleteRequest(Integer id);
	Request getRequestById(Integer id);
	
}
