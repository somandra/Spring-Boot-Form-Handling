package com.studentRegistration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;



@SpringBootApplication
public class StudentRegistrationApplication extends SpringBootServletInitializer {  
	@Override
	protected SpringApplicationBuilder configure(org.springframework.boot.builder.SpringApplicationBuilder application) {
		return application.sources(StudentRegistrationApplication.class);
	}
	 
	public static void main(String[] args) {  
				
		SpringApplication.run(StudentRegistrationApplication.class, args);
		
	}
}