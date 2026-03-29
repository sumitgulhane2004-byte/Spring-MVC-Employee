package com.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.entity.Employee;
import com.mvc.service.EmployeeService;

@Controller
public class EmployeeController {
	

	private final EmployeeService empService;

	public EmployeeController(EmployeeService empService) {
		super();
		this.empService = empService;
	}

	@GetMapping("/home")
	public String homepage() {

		System.out.println("home api hit hua...");

		return "homepage";
	}

	@GetMapping("/gotologinpage")
	public String loginpage() {

		return "login";
	}

	@PostMapping("/logindetails")
	public String validateLogin(@RequestParam String empname, @RequestParam String emppassword, Model m) {

		System.out.println("emp name = " + empname);
		System.out.println("emp pass = " + emppassword);

		m.addAttribute("key", empname.toUpperCase());

		return "dashboard";
	}

	@PostMapping("/addemployee")
	public String addEmployee(@ModelAttribute Employee employee) {

		System.out.println("incoming from jsp : " + employee);

		Employee emp = empService.saveEmployee(employee);

		System.out.println("incoming from db : " + emp);

		return "redirect:/show-all";
	}
	
	@GetMapping("/show-all")
	public String showAllEmployees(Model m ) {
		
		List<Employee> emps = empService.showAllEmployee();

		m.addAttribute("employees", emps);
		
		return "show";
	}
	
}
