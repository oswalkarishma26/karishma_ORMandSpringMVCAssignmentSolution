package com.greatlearning.springproj.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.greatlearning.springproj.model.Customer;

@Component
public interface CustomerDao {
	
	public void addNewCustomer (Customer customer);
	public List<Customer> getAllCustomers();
	public void deleteCustomer (int id);
	public Customer getCustomerById (int id);

}
