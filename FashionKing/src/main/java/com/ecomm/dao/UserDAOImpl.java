package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.UserDetail;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean registerUser(UserDetail user) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(user);
			return true;
		}
		catch(Exception e)
		{

		return false;
		}
	}

	@Override
	public List<UserDetail> retrieveUsers() {
		
		Session session=sessionFactory.openSession();
		List<UserDetail> userList=(List<UserDetail>) session.createQuery("from UserDetail").list();
		session.close();
		return userList;
	}
	
}
