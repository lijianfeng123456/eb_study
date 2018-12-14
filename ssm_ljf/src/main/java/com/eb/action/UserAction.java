package com.eb.action;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eb.pojo.User;
import com.eb.service.UserService;

@Controller
@RequestMapping("/s")
public class UserAction {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/home",produces="text/html;charset=UTF-8")
	public String index(){
		System.out.println("123");
	return "main";	
	}	
	
	
    @RequestMapping(value="/login",produces="text/html;charset=UTF-8")
    @ResponseBody
	public String login(User user) {
		User u=userService.userLogin(user);
		if(u!=null){
			return "success";
		}else{
			return "error";
		}
	}
}
