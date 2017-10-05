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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gsp.pojos.Agent;
import com.gsp.pojos.Request;
import com.gsp.service.AgentService;

@Controller
@RequestMapping("/agent")
public class AgentController {
	
	@Autowired
	private AgentService aservice;
	
	@PostConstruct
	public void init(){
		System.out.println("in agent Init");
	}
	/*
	 * Agent Login
	 */
	@GetMapping(value="/login")
	public String showLoginForm(Agent a, Model map,HttpSession hs){
		Agent currAgent = (Agent)hs.getAttribute("agent");
		if(currAgent!=null){
			return "redirect:/agent/agentPanel";
		}
		System.out.println("in agent login show");
		return "/agent/agentLogin";
	}
	
	@PostMapping(value="/login")
	public String processLoginForm(@Valid Agent a1, BindingResult res, RedirectAttributes attrs, HttpSession hs,Model map){
		if(res.hasFieldErrors("email") || res.hasFieldErrors("password")){
			System.out.println("error in Agent login");
			return "/agent/agentLogin";
		}
		System.out.println("login process "+ a1);
		Agent currAgent = aservice.validateAgent(a1.getEmail(), a1.getPassword());
		if(currAgent==null){
			map.addAttribute("login_error","Email or Password is wrong");
			return "/agent/agentLogin";
		}
		hs.setAttribute("agent", currAgent);
		return "redirect:/agent/agentPanel";
	}
	
	/*
	 * To change password
	 */
	@GetMapping(value="/update")
	public String showUpdateForm(Model map,HttpSession hs){
		Agent currAgent = (Agent)hs.getAttribute("agent");
		if(currAgent==null){
			return "redirect:/agent/login";
		}
		System.out.println("In password change form");
		return "/agent/changePassword";
	}
	
	@PostMapping(value="/update")
	public String processUpdateForm(HttpSession hs,Model map,@RequestParam String pass, @RequestParam String conPass, @RequestParam String oldPass){
		System.out.println(pass+" == "+conPass);
		Agent currAgent = (Agent) hs.getAttribute("agent");
		if(!currAgent.getPassword().equals(oldPass)){
			System.out.println("old password error");
			map.addAttribute("old_pass_error", "Wrong password");
			return "/agent/changePassword";
		}
		else if(pass.equals("")){
			System.out.println("password error");
			map.addAttribute("pass_error", "Password cannot be blank");
			return "/agent/changePassword";
		}
		else if(conPass.equals("")){
			System.out.println("Confirm password error");
			map.addAttribute("conpass_error", "Confirm Password cannot be blank");
			return "/agent/changePassword";
		}
		else if(!pass.equals(conPass)){
			System.out.println("Password do not match");
			map.addAttribute("match_error", "Password doesn't not match");
			return "/agent/changePassword";
		}
		else{
			System.out.println("in process change process ");
			currAgent.setPassword(pass);
			aservice.updateAgent(currAgent);
			hs.invalidate();
			return "redirect:/agent/login";
		}
	}
	
	/*
	 * edit profile
	 */
	@GetMapping(value="/editProfile")
	public String editProfile(Agent a, Model map, HttpSession hs){
		System.out.println("edit profile");
		Agent currAgent = (Agent) hs.getAttribute("agent");
		if(currAgent == null){
			return "redirect:/agent/login";
		}
		return "/agent/editProfile";
	}
	
	@PostMapping(value = "/editProfile")
	public String processEditForm(@Valid Agent a, BindingResult res, HttpSession hs){
		System.out.println("In edit profile process");
		if(res.hasFieldErrors("name") || res.hasFieldErrors("email")){
			System.out.println("Error in editing Profile"+ a);
			return "agent/editProfile";
		}
		Agent temp = (Agent) hs.getAttribute("agent");
		a.setId(temp.getId());
		a.setCompanyName(temp.getCompanyName());
		a.setPassword(temp.getPassword());
		System.out.println(a);
		String reqState = aservice.updateAgent(a);
		hs.setAttribute("agent", a);
		System.out.println(reqState);
		return "agent/agentProfile";
	}
	
	/*
	 * update status
	 */
	@GetMapping(value="/updateStatus")
	public String updateStatus(Request r,Model map, HttpSession hs,@RequestParam Integer reqId,@RequestParam String action,RedirectAttributes attrs){
		System.out.println("update status");
		Agent currAgent = (Agent) hs.getAttribute("agent");
		Request req = aservice.getRquestById(reqId);
		if(currAgent == null){
			return "redirect:/agent/login";
		}
		if(action.equals("user")){
			System.out.println("in side user");
			attrs.addFlashAttribute("user", req.getUser());
			return "redirect:/agent/list";
		}
		return "/agent/updateStatus";
	}
	
	@PostMapping(value="/updateStatus")
	public String processStatusUpdate(Request r,Model map,@RequestParam Integer reqId){
		System.out.println("in process status update");
		Request req = aservice.getRquestById(reqId);
		req.setStatus(r.getStatus());
		System.out.println(aservice.updateStatus(req));
		return "redirect:/agent/list";
	}
	
	/*
	 * get list of requests
	 */
	@GetMapping(value="list")
	public String showAllRequests(Model map,HttpSession hs){
		Agent currAgent = (Agent)hs.getAttribute("agent");
		if(currAgent==null){
			return "redirect:/agent/login";
		}
		map.addAttribute("req_list",aservice.getRequest(currAgent));
		return "/agent/listRequest";
	}
	
	/*
	 * Show agent profile
	 */
	@GetMapping(value="agentProfile")
	public String showProfile(Agent a,Model map,HttpSession hs){
		System.out.println("agent profile");
		Agent currAgent = (Agent)hs.getAttribute("agent");
		if(currAgent==null){
			return "redirect:/agent/login";
		}
		return "/agent/agentProfile";
	}
	
	/*
	 * Agent panel mapping
	 */
	@GetMapping(value="/agentPanel")
	public String showAgentPanel(HttpSession hs){
		System.out.println("showing agent panel");
		Agent currAgent = (Agent)hs.getAttribute("agent");
		if(currAgent==null){
			return "redirect:/agent/login";
		}
		return "agent/agentPanel";
	}
	
	/*
	 *  To logout agent
	 */
	@GetMapping(value = "/logout")
	public String logout(HttpSession hs,Model map) {
		System.out.println("in logout");
		hs.invalidate();
		return "redirect:/";
	}
	
	/*
	 * Handle Exception for request parameter 
	 */
	@ExceptionHandler(MissingServletRequestParameterException.class)
	public @ResponseBody void handleMissingParams(MissingServletRequestParameterException e){
		System.out.println("in exception handler");
	}
}
