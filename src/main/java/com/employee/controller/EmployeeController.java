package com.employee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.employee.model.Employee;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
   
    @GetMapping("/")
    public String showHomePage() {
        return "index"; 
    }


    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "register";
    }
    
    
    @PostMapping("/register")
    public String register(@ModelAttribute("employee") Employee employee, Model model) {
        try {
            employeeService.register(employee);
            model.addAttribute("message", "Employee Registered successfully!");
            return "register";
        } catch (RuntimeException e) {
            model.addAttribute("error", "Registration failed. Login ID already exists. Please choose a different one.");
            return "register";
        }
    }


    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; 
      
    }

    @PostMapping("/login")
    public String login(@RequestParam String loginId,
                        @RequestParam String password,
                        HttpSession session,
                        RedirectAttributes redirectAttributes,
                        Model model) {
        Employee emp = employeeService.login(loginId, password);
        if (emp != null) {
            session.setAttribute("loggedInUser", emp);
            redirectAttributes.addFlashAttribute("message", "Login successful!");
            return "redirect:/users";
        } else {
            model.addAttribute("error", "Invalid Credentials!");
            return "login";
        }
    }

   

    @GetMapping("/users")
    public String listUsers(HttpSession session, Model model) {
    	Employee emp = (Employee) session.getAttribute("loggedInUser");
    	if (emp == null) 
        	return "redirect:/login";
    	model.addAttribute("name", emp.getName());
    	
    	
    	 List<Employee> allEmployees = new ArrayList<>(employeeService.listEmployees()); 
    	 allEmployees.removeIf(e -> e.getId() == emp.getId());
         model.addAttribute("users", allEmployees);
         return "users";
    }

    
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
    
    
    
    @GetMapping("/editEmployee")
    public String showEditForm(@RequestParam("id") int id, Model model) {
        Employee employee = employeeService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "update"; 
    }
    
    /*---or---
      @GetMapping("/editEmployee/{id}")
	    public String showEditForm(@PathVariable("id") int id, Model model) {
	    Employee employee = employeeService.getEmployeeById(id);
	    model.addAttribute("employee", employee);
	    return "update";
	}*/

    @PostMapping("/updateEmployee")
    public String updateEmployee(@ModelAttribute("employee") Employee employee, RedirectAttributes redirectAttributes) {
        employeeService.update(employee);
        return "redirect:/users";
    }

    @GetMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("id") int id) {
        employeeService.delete(id);
        return "redirect:/users";
    }
    
  
}
