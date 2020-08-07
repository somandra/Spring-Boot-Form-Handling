# Spring-Boot-Form-Handling

-	The Spring Boot Application connects to the MySQL server using JPA Repository.
-	JPA Repository offers abstraction for updating , deleting , inserting object into the database. We create a list of objects that gets updated in the database.
-	The functions that can be used are : JPARepository.save() and JPARepository.get().
-	This can be achieved by extending the repository to JPARepository class.
-	src/main/resource/application.properties is used to establish Connection to Database.
/*spring.datasource.url=jdbc:mysql://localhost:3306/studreg?autoReconnect=true&useSSL=false
spring.datasource.username=root
spring.datasource.password=pass123

spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.mvc.view.prefix:/WEB-INF/views/
spring.mvc.view.suffix:.jsp*/
•	To run the application run com.studentRegistration/StudentRegistrationApplication.java as Java Application.
/*package com.studentRegistration;

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
*/


•	Once Server Started open browser go to localhost:8080/enrol to initiate application. 
•	Data through Jsp forms are recieved by the application through several RequestMappings.
•	StudentRegistrationController.java Class Handled All the page Requests and their corresponding mappings.
•	The RESTful API is done by receiving a set of requests and then send appropriate data back to the request.
•	The API is then compiled into a WAR file using maven, which adds only the dependencies that are used , and ignore the ones that are not specified.
•	Since we have a MySQL Connection established , we need to provide the service in pivotal dashboard.
•	This is done by enabling ClearMySQL Database service by giving an appropriate Instance Name.
•	The API is then hosted on Cloud Foundry by pushing the WAR file to the pivotal dashboard. 

//To login in Terminal Type cf then follow these commands
 
>> cf login -a api.run.pivotal.io
//To push application
>> cf push studentRegistration -p target\studentRegistration.war
//To logout
>> cf logout

