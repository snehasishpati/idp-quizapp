package com.quizapp.quizapp.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.quizapp.quizapp.entities.user;

@Service
public class userServiceImpl implements userService {

	List<user> list = new ArrayList<>();
	
	public List<user> getUsers(){
		list.add(new user(1,"Snehasish", "snehashis.nn","mnmm"));
		list.add(new user(2,"Sne2222hasish", "snnnehashis.nn","mmmmmnmm"));

		// TODO Auto-generated method stub
		return list;
	}

}
