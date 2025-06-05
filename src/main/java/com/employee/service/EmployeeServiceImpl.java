package com.employee.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.dao.EmployeeDao;
import com.employee.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;
    
    public void saveEmployee(Employee employee) {
        Employee existing = employeeDao.getEmployeeByLoginId(employee.getLoginId());
        if (existing != null) {
            throw new RuntimeException("Login ID already exists. Please use a different one.");
        }

        try {
            employeeDao.saveEmployee(employee);
        } catch (ConstraintViolationException e) {
            throw new RuntimeException("Error while saving employee: " + e.getMessage());
        }
    }

    @Override
    @Transactional
    public void register(Employee employee) {
        employeeDao.saveEmployee(employee);
    }

    @Override
    @Transactional
    public Employee login(String loginId, String password) {
        return employeeDao.getEmployeeByLogin(loginId, password);
    }

    @Override
    @Transactional
    public List<Employee> listEmployees() {
        return employeeDao.getAllEmployees();
    }
    
    
    
    
    
    
    @Override
    @Transactional
    public Employee getEmployeeById(int id) {
        return employeeDao.getEmployeeById(id);
    }

    
    @Override
    @Transactional
    public void update(Employee employee) {
        employeeDao.update(employee);
    }

    
    @Override
    @Transactional
    public void delete(int id) {
        employeeDao.delete(id);
    }



}

