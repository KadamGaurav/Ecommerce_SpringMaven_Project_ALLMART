package com.ecomm.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ecomm.model.Cart;
import com.ecomm.model.Category;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;
import com.ecomm.model.UserDetail;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.ecomm")
public class DBConfig 
{
	//create a DataSource bean
	@Bean(name="dataSource")
	public DataSource getDataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/mavenproject");
		dataSource.setUsername("root");
		dataSource.setPassword("mysql1234");
		System.out.println("============DataSource bean created=========");
		return dataSource;
	}
	
	//create a SessionFactory bean
	@Bean
	public SessionFactory getSessionFactoryBean()
	{
		Properties hibernateProp=new Properties();
		hibernateProp.put("hibernate.dialect","org.hibernate.dialect.MySQL8Dialect");
		hibernateProp.put("hbm2ddl.auto","update");
		System.out.println("=== Properties added====");
		
		LocalSessionFactoryBuilder factoryMgr=new LocalSessionFactoryBuilder(getDataSource());
		factoryMgr.addProperties(hibernateProp);
		System.out.println("=== FactoryBuilder created====");
		
		factoryMgr.addAnnotatedClass(Category.class);
		factoryMgr.addAnnotatedClass(UserDetail.class);
		factoryMgr.addAnnotatedClass(Supplier.class);
		factoryMgr.addAnnotatedClass(Product.class);
		factoryMgr.addAnnotatedClass(Cart.class);
		System.out.println("=== SessionFactory Object Created====");
		
		SessionFactory sessionFactory=factoryMgr.buildSessionFactory();
		System.out.println("============SessionFactory bean created=========");
		
		return sessionFactory;
	}
	
	//create a HibernateManager bean
	@Bean(name="txManager")
	public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory)
	{
		System.out.println("============HibernateTransactionManager bean created=========");
		return new HibernateTransactionManager(sessionFactory);
	}
}
