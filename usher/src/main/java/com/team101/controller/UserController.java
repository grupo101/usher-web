package com.team101.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team101.model.User;
import com.team101.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

//	@RequestMapping("/user")
//	public ModelAndView user() {
//		
//		User user = new User();
//		
//		return new ModelAndView("createUser", "userForm", user);
//	}

	@RequestMapping("/user1")
	public ModelAndView user1() {
		
		User user = new User();

		return new ModelAndView("modifyUser", "userForm", user);
	}

	@RequestMapping("/user2")
	public String user2(Model model) {	
		User user = new User();
		List<User> userList = userService.listAll();
		model.addAttribute("users", userList);
		model.addAttribute("userForm", user);
		
		return "listUser";
	}

	@RequestMapping("/addUser")
	@Transactional
	protected String addUser(User user, Model model)
			throws ServletException {

		List<User> userList = userService.listAll();

		if (!(userService.validateField(user))) {
			return "warning";
		} else {
			if (userService.validateEqual(user, userList)) {
				return "duplicado";
			} else {
				userService.create(user);
				return "success";
			}
		}

	}

	@RequestMapping("/removeUser")
	@Transactional
	protected String removeUser(User user, Model model)
			throws ServletException {

		userService.remove(user);
		return "success";
	}

	@RequestMapping("/modifyUser")
	@Transactional
	protected String modifyUser(User user, Model model)
			throws ServletException {
		
		userService.modify(user);
		return "success";
	}
	
	@RequestMapping("/canvas")
	@Transactional
	protected String canvas(Model model)
			throws ServletException {
		User user = new User();
		List<User> userList = userService.listAll();
		model.addAttribute("users", userList);
		model.addAttribute("userForm", user);
		return "quorumPanel";
	}
	
}