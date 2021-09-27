package com.example.test.service;

import com.example.test.dto.CustomerDto;
import com.example.test.model.Customer;
import com.example.test.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerServiceImp implements CustomerService {

    @Autowired
    CustomerRepository customerDao;

    @Override
    public Customer addCustomer(CustomerDto customerDto) {
        Customer customer = new Customer();
        customer.setFirstName(customerDto.getFirstName());
        customer.setLastName(customerDto.getLastName());
        customer.setMobileNumber(customerDto.getMobileNumber());
        customer.setEmail(customerDto.getEmail());
        return customerDao.save(customer);
    }

    @Override
    public Customer updateCustomer(CustomerDto customerDto) {
        Optional<Customer> optCustomer = customerDao.findById(customerDto.getCustomerId());
        Customer customer = optCustomer.get();
        customer.setFirstName(customerDto.getFirstName());
        customer.setLastName(customerDto.getLastName());
        customer.setMobileNumber(customerDto.getMobileNumber());
        customer.setEmail(customerDto.getEmail());
        return customerDao.save(customer);
    }

    @Override
    public Boolean removeCustomer(Integer customerId) {
        Optional<Customer> optcustomer = customerDao.findById(customerId);
        customerDao.delete(optcustomer.get());
        return true;
    }

    @Override
    public Customer viewCustomerById(Integer customerId) {
        Optional<Customer> optcustomer = customerDao.findById(customerId);
        return optcustomer.get();
    }
}
