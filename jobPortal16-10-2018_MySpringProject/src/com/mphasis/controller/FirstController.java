package com.mphasis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mphasis.dao.UserDaoImple;
import com.mphasis.model.User;
import com.mphasis.myUtils.MyUtility;

@Controller
public class FirstController {
	private User user=null;
	@RequestMapping(value="/CompanySuccessPage",method=RequestMethod.POST)
	public String getMe(Model model,User user) {//model is a namespace holder
		System.out.println(MyUtility.getMydataSource());
		this.user=user;
		System.out.println("username"+this.user.getUserName());
		System.out.println("password"+this.user.getPassword());
		//user.setPassword("admin");user.setRoles("admin");
		//user.setUid(1);
	     User user1=new UserDaoImple().getUser(user.getUserName());
	    if(user1==null) { 
		model.addAttribute("somethingStupid", user);
		return "CompanyLogin";
	}else {
		model.addAttribute("somethingStupid", user1);
		return "LoginFailure";
	}

}
}
