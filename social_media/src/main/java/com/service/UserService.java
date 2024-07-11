package com.service;

import com.model.User;

public interface UserService {
	void userSignup(User u);
	boolean userLogin(String un, String pw);
	void deleteUser(int id);
}
