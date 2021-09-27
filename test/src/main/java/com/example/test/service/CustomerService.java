package com.example.test.service;

import com.example.test.dto.CustomerDto;
import com.example.test.model.Customer;

public interface CustomerService {
    public Customer addCustomer(CustomerDto customerdto);
    public Customer updateCustomer(CustomerDto customerdto);
    public Boolean removeCustomer(Integer customerId);
    public Customer viewCustomerById(Integer customerId);
}
