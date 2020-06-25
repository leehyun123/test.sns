package leehyun.sns.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import leehyun.sns.user.domain.User;
import leehyun.sns.user.service.UserService;

@Controller
@RequestMapping
	public class UserController {
	@Autowired private UserService userService;
	
	@RequestMapping("/user/addUser")
	public String addUser() {
		return "/user/addUser";
	}
	
	@RequestMapping("/user/login")
	public String login() {
		return "/user/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/user/login", method=RequestMethod.POST)
	public boolean login(HttpSession session, String userId, String userPw) {
		User chkUser = userService.chkUser(userId);
		System.out.println(chkUser.getUserName());
		boolean isLogin = false; 
 
		if(chkUser.getUserId() != null) {
			if(userPw.equals(chkUser.getPassword())) {
				if(userId != null) session.setAttribute("userId", userId);
				if(userPw != null) session.setAttribute("userPw", userPw);
				session.setAttribute("user", chkUser);
				isLogin = true;
			}
		}
		return isLogin;
	}
	
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
			session.invalidate();
		return "/user/login";
	}
	
	@ResponseBody
	@RequestMapping("/user/findUser")
	public String finduser(String userId) {
		User user = userService.findUser(userId);
		userId = user.getUserId();
		return userId;
	}
	
	@ResponseBody
	@RequestMapping(value="/user/addUser", method=RequestMethod.POST)
	public String addUser(User user) {
		
		userService.join(user);
		return "/user/addUser";
	}
	
	@ResponseBody
	@RequestMapping(value="/delUser", method=RequestMethod.POST)
	public List<User> delUser(int userNo) {
		userService.secede(userNo);
		return userService.listUsers();
	}
	
	@ResponseBody
	@RequestMapping(value="/updateUser", method=RequestMethod.POST)
	public List<User> updateUser(String userName, int userNo) {
		User user = new User();
		user.setUserNum(userNo);
		user.setUserName(userName);
		userService.correctUser(user); 
		return userService.listUsers();
	}
	
	@RequestMapping("/user/mail")
	public void send(String email, int emailNum) {
		userService.send(email, emailNum);
	}
}