package com.gsp.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gsp.pojos.Agent;

@Repository
public class AgentDaoImpl implements AgentDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public Agent updateAgent(Agent a) {
		factory.getCurrentSession().update(a);
		return a;
	}

	@Override
	public Agent validateAgent(String em, String pass) {
		Agent a =null;
		 try {
			a = (Agent) factory
					.getCurrentSession()
					.createQuery("select a from Agent a where a.email = :em and a.password = :pass",Agent.class)
					.setParameter("em", em).setParameter("pass", pass)
					.getSingleResult();
		} catch (HibernateException | NoResultException e) {
			e.printStackTrace();
			return null;
		}
		return a;
	}

	@Override
	public Agent addAgent(Agent a) {
		factory.getCurrentSession().save(a);
		return a;
	}

	@Override
	public List<Agent> getAllAgents() {
		return factory.getCurrentSession()
				.createQuery("select a from Agent a",Agent.class)
				.getResultList();
	}

	@Override
	public Agent getAgentById(Integer id) {
		return (Agent)factory.getCurrentSession().get(Agent.class, id);
	}
	
	@Override
	public List<String> getAllCompanies() {
		return factory.getCurrentSession().createQuery("select a.companyName from Agent a", String.class).getResultList();
	}

	@Override
	public Agent getAgentByCompany(String CompanyName) {
		return (Agent) factory.getCurrentSession()
				.createQuery("select a from Agent a where a.companyName = :CompanyName", Agent.class)
				.setParameter("CompanyName", CompanyName)
				.getSingleResult();
	}

}
