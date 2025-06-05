package com.employee.dao;

import java.util.List;

import com.employee.model.Employee;

public interface EmployeeDao {
    void saveEmployee(Employee employee);
    Employee getEmployeeByLogin(String loginId, String password);
    List<Employee> getAllEmployees();
    Employee getEmployeeByLoginId(String loginId); 
    
    
    Employee getEmployeeById(int id);  
    void update(Employee employee);    
    void delete(int id);
}
