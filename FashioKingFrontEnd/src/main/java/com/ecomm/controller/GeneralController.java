package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController 
{
	
	@RequestMapping("/login")
	public String showLoginPage()
	{
		System.out.println("========I am in General Controller - Login Page=====");
		return "login";
	}
	
	@RequestMapping("/Register")
	public String showRegistrationPage()
	{
		System.out.println("========I am in General Controller - Registration Page=====");
		return "Register";
	}
	
	
	@RequestMapping("/AboutUs")
	public String viewAboutUsPage()
	{
		System.out.println("========I am in General Controller - AboutUs Page=====");
		return "AboutUs";
	}
	
	@RequestMapping("/ContactUs")
	public String viewContactUsPage()
	{
		System.out.println("========I am in General Controller - ContactUs Page=====");
		return "ContactUs";
	}
	
	@RequestMapping("/index")
	public String showIndexPage()
	{
		System.out.println("========I am in General Controller - Index Page=====");
		return "index";
	}
	
	@RequestMapping("/UserHome")
	public String viewUserHomePage()
	{
		System.out.println("========I am in General Controller - UserHome Page=====");
		return "UserHome";
	}
	
	
}
