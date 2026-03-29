package com.mvc.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.entity.Employee;
import com.mvc.repo.EmployeeRepository;


@Service
public class EmployeeService {
	private final EmployeeRepository empRepo;

	public EmployeeService(EmployeeRepository empRepo) {
		super();
		this.empRepo = empRepo;
	}

	public Employee saveEmployee(Employee employee) {

		return empRepo.save(employee);
	}

	public List<Employee> showAllEmployee() {
		// TODO Auto-generated method stub
		return empRepo.findAll();
	}

	

}
