package com.greatlearning.springproj.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.springproj.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	SessionFactory factory;

	@Override
	@Transactional
	public void addNewCustomer(Customer customer) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	@Override
	@Transactional
	public List<Customer> getAllCustomers() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Customer");
		return query.getResultList();
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		Session session = factory.getCurrentSession();
		Customer customer = session.load(Customer.class, id);
		session.delete(customer);	
	}

	@Override
	@Transactional
	public Customer getCustomerById(int id) {
		Session session = factory.getCurrentSession();
		Customer customer = session.get(Customer.class, id);
		System.out.println(customer);
		return customer;
	}

}
