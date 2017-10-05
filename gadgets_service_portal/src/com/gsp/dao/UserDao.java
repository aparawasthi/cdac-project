package com.gsp.dao;

import java.util.List;

import com.gsp.pojos.User;

public interface UserDao {
	User registerUser(User u);
	List<User> listUser();
	User validateUser(String em,String pass);
	User updateUser(User u);
	String deleteUser(Integer id);
	User getUserById(Integer id);
	User checkEntryIfPresent(String em); 
}
