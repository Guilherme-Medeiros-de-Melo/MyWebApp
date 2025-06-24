package com.springboot.mywebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
	public AuthenticationService() {
		super();
	}
	
	public boolean authenticate(String user, String password) {
		boolean validUser = user.equals("TestUser"); 
		boolean validPass = password.equals("TestPass");
		
		return	validUser && validPass;
	}
}
