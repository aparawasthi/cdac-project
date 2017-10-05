package com.gsp.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gsp.pojos.Request;
import com.gsp.pojos.User;

@Repository
public class RequestDaoImpl implements RequestDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public List<Request> listRequestByUserId(User u) {
		return factory.getCurrentSession()
				.createQuery("select r from Request r where r.user = :u",Request.class)
				.setParameter("u",u)
				.getResultList();
	}

	@Override
	public List<Request> listRequestByCompany(String company) {
		return factory.getCurrentSession()
				.createQuery("select r from Request r where r.companyName = :companyName",Request.class)
				.setParameter("companyName",company)
				.getResultList();
	}

	@Override
	public Request fileRequest(Request r) {
		factory.getCurrentSession().save(r);
		return r;
	}

	@Override
	public String deleteRequest(Integer id) {
		String status="Request deletion failed";
		Request r=getRequestById(id);
		if(r != null) {
			factory.getCurrentSession().delete(r);
			status="User with ID "+r.getId()+" deleted successfully";
		}
		return status;
	}
	
	@Override
	public Request getRequestById(Integer id) {
		return (Request) factory.getCurrentSession().get(Request.class, id);
	}

	@Override
	public Request updateRequest(Request r) {
		factory.getCurrentSession().update(r);
		return r;
	}

	@Override
	public String getStatusById(Integer reqId) {
		Request temp = getRequestById(reqId);
		return temp.getStatus();
	}

}
