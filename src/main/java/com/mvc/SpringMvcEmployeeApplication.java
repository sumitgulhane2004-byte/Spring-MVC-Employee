package com.mvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringMvcEmployeeApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(SpringMvcEmployeeApplication.class, args);
		
		System.err.println("app started");
	}

}
