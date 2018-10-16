package com.mphasis.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value="/popoye", method=RequestMethod.GET)
	public String pingpong() {
		return "loginPage";//name of the page will return always as a string 
	}
	@RequestMapping(value="/CompanyRegistration", method=RequestMethod.GET)
	public String mapping() {
		return "CompanyRegistration";//name of the page will return always as a string 
	}
	@RequestMapping(value="/CompanyLoginSuccessPage", method=RequestMethod.GET)
	public String mapping2() {
		return "CompanyLoginSuccessPage";//name of the page will return always as a string 
	}
	@RequestMapping(value="/ForgotPassword", method=RequestMethod.GET)
	public String map() {
		return "ForgotPassword";//name of the page will return always as a string 
	}
	@RequestMapping(value="/againLogin", method=RequestMethod.GET)
	public String map1() {
		return "CompanyLogin";//name of the page will return always as a string 
	}
	@RequestMapping(value="/registrationSuccess", method=RequestMethod.GET)
	public String map2() {
		return "CompanyRegistrationSuccess";//name of the page will return always as a string 
	}
}
