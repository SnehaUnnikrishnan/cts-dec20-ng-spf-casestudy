package com.contact.project.service;

import com.contact.project.entity.Login;

public interface UserService 
{

	boolean validateUser(String username, String password);

	void saveUser(Login login);	
}
