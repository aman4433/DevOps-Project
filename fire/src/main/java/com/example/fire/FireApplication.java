package com.example.fire;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class FireApplication {

	public static void main(String[] args) {
		SpringApplication.run(FireApplication.class, args);
	}

}

@RestController
class FrontendController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello from the Frontend Microservice!";
    }
}
