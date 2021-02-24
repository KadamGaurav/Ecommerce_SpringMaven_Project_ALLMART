package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.UserDetail;

public interface UserDAO 
{
	public boolean registerUser(UserDetail user);
	public List<UserDetail> retrieveUsers();
}
