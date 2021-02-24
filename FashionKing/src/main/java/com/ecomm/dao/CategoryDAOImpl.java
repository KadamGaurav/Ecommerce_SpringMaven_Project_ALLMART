package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addCategory(Category category) {

		try {
			sessionFactory.getCurrentSession().save(category);
			// Session session=sessionFactory.openSession();
			// System.out.println("Session created");
			// session.save(category);
			// session.close();
			System.out.println("Category added");
			return true;
		} catch (Exception e) {
			System.out.println("Exception arised:" + e);
			return false;
		}
	}

	@Override
	public boolean deleteCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateCategory(Category category) {

		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Category getCategory(int categoryId) {
		Session session = sessionFactory.openSession();
		Category category = (Category) session.get(Category.class, categoryId);
		session.close();
		return category;
	}

	@Override
	public List<Category> retrieveCategories() {
		Session session = sessionFactory.openSession();
		List<Category> categoryList = (List<Category>) session.createQuery("from Category").list();
		session.close();
		return categoryList;
	}

}