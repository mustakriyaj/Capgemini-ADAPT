package com.example.test.service;

import static org.junit.jupiter.api.Assertions.*;
//write a mockito test case of customerServiceImpTest
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;
    
import java.util.ArrayList;
import java.util.List;  //importing the list class
import java.util.Optional;

import com.example.test.dto.CustomerDto;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.stubbing.OngoingStubbing;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import com.example.test.model.Customer;
import com.example.test.repository.CustomerRepository;
import com.example.test.service.CustomerServiceImp;
    
@ExtendWith(SpringExtension.class)
@SpringBootTest
class CustomerServiceImpTest {
    
    @Mock
    private CustomerRepository customerRepository;
    
    @InjectMocks
    private CustomerServiceImp customerServiceImp;

//    @BeforeEach
//    public void beforeEach() {
//        when(customerRepository.save(any(Customer.class))).thenReturn(new Customer()));
//    }
    
    @Test
    void testViewCustomerById() {
        Customer customer = new Customer();
        customer.setCustomerId(1);
        customer.setFirstName("John");
        customer.setLastName("Doe");
        customer.setEmail("john@gmail.com");
        customer.setMobileNumber("1234567890");
        when(customerRepository.findById(1)).thenReturn(Optional.of(customer));
        Customer result = customerServiceImp.viewCustomerById(1);
        assertEquals("John", result.getFirstName());
    }
    
    @Test
    void testAddCustomer() {
        CustomerDto dto = new CustomerDto("John","Doe","1234567890","john@gmail.com");
        when(customerRepository.save(any(Customer.class))).thenReturn(new Customer());
        Customer result = customerServiceImp.addCustomer(dto);
        assertNotNull(result);
    }
    
    @Test
    void testRemoveCustomer() {
//        Customer customer = new Customer();
//        customer.setCustomerId(1);
//        customer.setFirstName("John");
//        customer.setLastName("Doe");
//        customer.setEmail("john@gmail.com");
//        customer.setMobileNumber("1234567890");
        when(customerRepository.save(any(Customer.class))).thenReturn(new Customer());
        when(customerRepository.findById(1)).thenReturn(Optional.of(new Customer()));
        customerServiceImp.removeCustomer(1);
    }
    
    @Test
    void testUpdateCustomer() {
        Customer customer = new Customer();
        customer.setCustomerId(1);
        customer.setFirstName("John");
        customer.setLastName("Doe");
        customer.setEmail("john@gmail.com");
        customer.setMobileNumber("1234567890");
        CustomerDto dto = new CustomerDto(1,"John","Doe","1234567890","john@gmail.com");
        when(customerRepository.findById(1)).thenReturn(Optional.of(customer));
        customerServiceImp.updateCustomer(dto);
    }
    
}