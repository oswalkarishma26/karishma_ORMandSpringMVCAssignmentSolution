package com.greatlearning.springproj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.springproj.dao.CustomerDao;
import com.greatlearning.springproj.model.Customer;

@Controller
@RequestMapping("customer")
public class CustomerController {
	
	@Autowired
	CustomerDao customerDao;
	
	@GetMapping("list")
	public String getAllCustomers(Model model) {
		List<Customer> customers = customerDao.getAllCustomers();
		model.addAttribute("customer", customers);
		return "customers-list";
	}

	@GetMapping("showFormForAdd")
	public String showCustomerForm(Model model) {
		Customer customer =new Customer();
		model.addAttribute("customer", customer);
		return "customers-form";
	}

	@PostMapping("save")
	public String addNewCustomer(Model model,
			@ModelAttribute("customer") Customer customer) {
		customerDao.addNewCustomer(customer);
		return "redirect:/customer/list";
	}

	@GetMapping("showFormForUpdate")
	public String updateCustomer(Model model,
			@RequestParam("id") int id) {
		Customer customer = customerDao.getCustomerById(id);
		 System.out.println(customer);
		 model.addAttribute("customer", customer);
		return "customers-form";
	}


	@GetMapping("delete")
	public String deleteCustomer(Model model,
			@RequestParam("id") int id) {
		customerDao.deleteCustomer(id);
		 return "redirect:/customer/list";
	}

}
