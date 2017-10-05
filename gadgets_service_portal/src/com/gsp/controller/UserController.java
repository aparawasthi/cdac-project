package com.gsp.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gsp.pojos.Request;
import com.gsp.pojos.User;
import com.gsp.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService uservice;
	
	@PostConstruct
	public void init(){
		System.out.println("in user Init");
	}
	
	/*
	 * User sign up process
	 */
	@GetMapping(value="/signup")
	public String showSignUpForm(User u,HttpSession hs){
		User u1 = (User)hs.getAttribute("currentUser");
		if(u1 != null)
			return "redirect:/user/userPanel";
		System.out.println("In show sign up form");
		return "/user/signup";
	}
	
	@PostMapping(value="/signup")
	public String processSignUpForm(RedirectAttributes attrs, @Valid User u1, BindingResult res,Model map,@RequestParam String conf_pwd){
		System.out.println("in user sign up process"+ u1);
		if (res.hasErrors()){
			System.out.println("Error Processing sign up user"+ u1);
			return "/user/signup";
		}
		if(conf_pwd.equals("")){
			map.addAttribute("signup_error", "Confirm Password field cannot be left blank");
			return "/user/signup";
		}
		else if(!conf_pwd.equals(u1.getPassword())){
			map.addAttribute("signup_error", "Password do not match");
			return "/user/signup";
		}
		else{
			if(uservice.checkIfUserPresent(u1.getEmail())!=null){
				map.addAttribute("signup_error", "Email already exists in our database");
				return "/user/signup";
			}
			uservice.signUpUser(u1);
			return "redirect:/index.jsp";
		}
	}
	
	/*
	 * User login process
	 */
	@GetMapping(value="/login")
	public String showLoginForm(User u, Model map,HttpSession hs){
		User u1 = (User)hs.getAttribute("currentUser");
		if(u1 != null)
			return "redirect:/user/userPanel";
		System.out.println("in user login show");
		return "/user/userLogin";
	}
	
	@PostMapping(value="/login")
	public String processLoginForm(@Valid User u1, BindingResult res, RedirectAttributes attrs, HttpSession hs,Model map){
		if(res.hasFieldErrors("email") || res.hasFieldErrors("password")){
			System.out.println("error in user login");
			return "/user/userLogin";
		}
		System.out.println("login process "+ u1);
		User currUser = uservice.validateUser(u1.getEmail(), u1.getPassword());
		if(currUser == null){
			map.addAttribute("login_error","Email or Password is wrong");
			return "/user/userLogin";
		}
		hs.setAttribute("currentUser", currUser);
		return "redirect:/user/userPanel";
	}
	
	/*
	 *  Placing a request for the user 
	 */
	@GetMapping(value="/placeRequest")
	public String showPlaceReqForm(Request r, Model map,HttpSession hs){
		User u = (User)hs.getAttribute("currentUser");
		if(u == null)
			return "redirect:/user/login";
		System.out.println("in place req show");
		System.out.println(uservice.getCompanies());
		map.addAttribute("company", uservice.getCompanies());
		return "/user/placeRequest";
	}
	
	@PostMapping(value = "/placeRequest")
	public String processRequestForm(RedirectAttributes attrs, @Valid Request r1, BindingResult res, HttpSession hs){
		System.out.println("In file request process");
		if(res.hasErrors()){
			System.out.println("Error in filing a request"+ r1);
			return "redirect:/user/placeRequest";
		}
		User temp = (User) hs.getAttribute("currentUser");
		System.out.println(temp);
		r1.setUser(temp);
		String reqState = uservice.fileRequest(r1);
		System.out.println(reqState);
		return "user/userPanel";
	}
	
	/*
	 * To view the all request made by the user
	 */
	@GetMapping(value = "/requestList")
	public String listRequest(Model map,HttpSession hs){
		User u = (User) hs.getAttribute("currentUser");
		if(u == null)
			return "redirect:/user/login";
		System.out.println("in request list");
		map.addAttribute("req_list",uservice.getRequestList(u));
		return "/user/requestList";	
	}
	
	/*
	 * To edit the user data
	 */
	@GetMapping(value="/editProfile")
	public String editProfile(User u, Model map, HttpSession hs){
		System.out.println("edit profile");
		User currUser = (User) hs.getAttribute("currentUser");
		if(currUser == null){
			return "redirect:/user/login";
		}
		return "/user/editProfile";
	}
	
	@PostMapping(value = "/editProfile")
	public String processEditForm(@Valid User u, BindingResult res, HttpSession hs){
		System.out.println("In edit profile process");
		if(res.hasFieldErrors("name") || res.hasFieldErrors("address") || res.hasFieldErrors("contactNo") || res.hasFieldErrors("email")){
			System.out.println("Error in editing Profile"+ u);
			return "user/editProfile";
		}
		User temp = (User) hs.getAttribute("currentUser");
		u.setId(temp.getId());
		u.setPassword(temp.getPassword());
		hs.setAttribute("currentUser", u);
		System.out.println(uservice.updateUser(u));
		return "user/myProfile";
	}
	
	/*
	 *  Getting Status for a request 
	 */
	@GetMapping(value = "/getStatus")
	public String getStatus(@RequestParam Integer reqId,HttpSession hs,RedirectAttributes attrs,@RequestParam String action,Model map){
		System.out.println("in get status");
		User u = (User) hs.getAttribute("currentUser");
		if(u == null)
			return "redirect:/user/login";
		if(action.equals("feedback")){
			System.out.println("in feedback");
			attrs.addFlashAttribute("reqID", reqId);
			return "redirect:/user/feedback";
		}else{
			if(reqId != null){
				System.out.println(uservice.trackRequest(reqId));
				attrs.addFlashAttribute("req_status", uservice.trackRequest(reqId));
			}
			return "redirect:/user/requestList";
		}
			
	}
	/*
	 * To give feedback 
	 */
	@GetMapping(value="/feedback")
	public String showFeedbackForm(HttpSession hs){
		User u = (User) hs.getAttribute("currentUser");
		if(u == null)
			return "redirect:/user/login";
		System.out.println("in feedback show");
		return "/user/feedback";
	}
	@PostMapping(value="/feedback")
	public String giveFeedback(@RequestParam Integer reqId,@RequestParam String feedback,RedirectAttributes attrs){
		System.out.println("In process feedback");
		System.out.println(feedback+"  ==  "+reqId);
		attrs.addFlashAttribute("feedback_status", uservice.giveFeedback(feedback, reqId));
		return "redirect:/user/requestList";
	}
	
	/*
	 * Handle Exception for request parameter 
	 */
	@ExceptionHandler(MissingServletRequestParameterException.class)
	public @ResponseBody void handleMissingParams(MissingServletRequestParameterException e){
		System.out.println("in exception handler");
		
	}
	
	/*
	 * To change password
	 */
	@GetMapping(value="/update")
	public String showUpdateForm(Model map,HttpSession hs){
		User currUser = (User)hs.getAttribute("currentUser");
		if(currUser==null){
			return "redirect:/user/login";
		}
		System.out.println("In password change form");
		return "/user/changePassword";
	}
	
	@PostMapping(value="/update")
	public String processUpdateForm(HttpSession hs,Model map,@RequestParam String pass, @RequestParam String conPass, @RequestParam String oldPass){
		System.out.println(pass+" == "+conPass);
		User currUser = (User) hs.getAttribute("currentUser");
		if(!currUser.getPassword().equals(oldPass)){
			System.out.println("old password error");
			map.addAttribute("old_pass_error", "Wrong password");
			return "/user/changePassword";
		}
		else if(pass.equals("")){
			System.out.println("password error");
			map.addAttribute("pass_error", "Password cannot be blank");
			return "/user/changePassword";
		}
		else if(conPass.equals("")){
			System.out.println("Confirm password error");
			map.addAttribute("conpass_error", "Confirm Password cannot be blank");
			return "/user/changePassword";
		}
		else if(!pass.equals(conPass)){
			System.out.println("Password do not match");
			map.addAttribute("match_error", "Password doesn't not match");
			return "/user/changePassword";
		}
		else{
			System.out.println("in process change process ");
			currUser.setPassword(pass);
			uservice.updateUser(currUser);
			hs.invalidate();
			return "redirect:/user/login";
		}
	}
	
	/*
	 *  To logout the user
	 */
	@GetMapping(value = "/logout")
	public String logout(HttpSession hs,Model map) {
		System.out.println("in logout");
		hs.invalidate();
		return "redirect:/";
	}
	
	/*
	 * global mapping for /user/ --convenience method to handle globally all
	 * forwards
	 * ONLY Matching required -- incoming URL pattern MUST match with logical
	 * view name.
	 */
	@GetMapping("/{path}")
	public String globalMapper(@PathVariable String path,HttpSession hs) {
		User u = (User) hs.getAttribute("currentUser");
		if(u == null)
			return "redirect:/user/login";
		System.out.println("in global " + path);
		return "/user/"+path;
	}
	

}

