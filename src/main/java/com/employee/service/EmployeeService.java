package com.employee.service;

import java.util.List;

import com.employee.model.Employee;

public interface EmployeeService {
    void register(Employee employee);
    Employee login(String loginId, String password);
    List<Employee> listEmployees();
  
    
    Employee getEmployeeById(int id);
    void update(Employee employee);
    void delete(int id);
    

}

