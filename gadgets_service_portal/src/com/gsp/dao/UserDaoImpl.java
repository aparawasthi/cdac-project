package com.gsp.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gsp.pojos.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory factory;
	
	@Override
	public User registerUser(User u) {
			factory.getCurrentSession().save(u);
		return u;
	}

	@Override
	public List<User> listUser() {
		return factory.getCurrentSession()
				.createQuery("select u from User u",User.class).getResultList();
	}

	@Override
	public User validateUser(String em, String pass) {
		User u =null;
		try {
			u = (User) factory
					.getCurrentSession()
					.createQuery("select u from User u where u.email = :em and u.password = :pass",User.class)
					.setParameter("em", em).setParameter("pass", pass)
					.getSingleResult();
		} catch (HibernateException | NoResultException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return u;
	}

	@Override
	public User updateUser(User u) {
		factory.getCurrentSession().update(u);
		return u;
	}

	@Override
	public String deleteUser(Integer id) {
		String status="User deletion failed";
		User u=getUserById(id);
		if(u != null) {
			factory.getCurrentSession().delete(u);
			status="User with ID "+u.getId()+" deleted successfully";
		}
		return status;
	}

	@Override
	public User getUserById(Integer id) {
		return (User) factory.getCurrentSession().get(User.class, id);
	}

	@Override
	public User checkEntryIfPresent(String em) {
		User u =null;
		try {
			u = (User) factory
					.getCurrentSession()
					.createQuery("select u from User u where u.email = :em",User.class)
					.setParameter("em", em)
					.getSingleResult();
		} catch (HibernateException | NoResultException e) {
			e.printStackTrace();
			return null;
		}
		return u;
	}
}
