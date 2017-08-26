package com.ebim.factory.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ebim.factory.model.User;
import com.ebim.factory.service.UserService;


@RestController
public class UserRestController {

	 @Autowired()
	 private UserService userService;
	
	  
	  @RequestMapping(value="/listUser", method = RequestMethod.GET, headers = "Accept=application/json")
	    public HttpEntity<List<User>> getListUser(){
	    	
		  	HttpHeaders headers = new HttpHeaders();
		  	List<User> users = userService.findAllUsers();
		  
	    	return new HttpEntity<List<User>>(users, headers);
	    }
	
}//FIN DE TODO