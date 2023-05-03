package com.quizapp.quizapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quizapp.quizapp.entities.user;
import com.quizapp.quizapp.services.userService;

@RestController
public class userController {

	@Autowired
	private userService userservice;
	
	@GetMapping("/users")
	public List<user> getUsers() {
		return this.userservice.getUsers();				
	}
}
