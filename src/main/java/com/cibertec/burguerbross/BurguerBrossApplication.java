package com.cibertec.burguerbross;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication
@EnableWebMvc
public class BurguerBrossApplication {

	public static void main(String[] args) {
		SpringApplication.run(BurguerBrossApplication.class, args);
	}

}
