package org.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.web.exceptions.NoSuchUser;
import org.web.repo.UserRepo;


@SpringBootApplication
public class SpringBootWebProjApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication.run(SpringBootWebProjApplication.class, args);
	}

}
