package com.employee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employee.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveEmployee(Employee employee) {
        sessionFactory.getCurrentSession().saveOrUpdate(employee);	
    }

    @Override
    public Employee getEmployeeByLogin(String loginId, String password) {
        String hql = "FROM Employee WHERE loginId = :loginId AND password = :password";
        return sessionFactory.getCurrentSession()
                .createQuery(hql, Employee.class)
                .setParameter("loginId", loginId)
                .setParameter("password", password)
                .uniqueResult();
    }

    @Override
    public List<Employee> getAllEmployees() {
        return sessionFactory.getCurrentSession().createQuery("FROM Employee", Employee.class).list();
    }
    
    @Override
    public Employee getEmployeeByLoginId(String loginId) {
        String hql = "FROM Employee WHERE loginId = :loginId";
        return sessionFactory.getCurrentSession()
                .createQuery(hql, Employee.class)
                .setParameter("loginId", loginId)
                .uniqueResult();
    }
    
    
    @Override
    public Employee getEmployeeById(int id) {
        return sessionFactory.getCurrentSession().get(Employee.class, id);
    }

    @Override
    public void update(Employee employee) {
        sessionFactory.getCurrentSession().update(employee);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Employee emp = session.byId(Employee.class).load(id);
        session.delete(emp);
    }
    

}

