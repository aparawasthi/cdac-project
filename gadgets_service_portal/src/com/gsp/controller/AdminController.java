package com.gsp.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gsp.pojos.Agent;
import com.gsp.pojos.Product;
import com.gsp.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final String username="admin";
	private final String password="admin";
	@Autowired
	private AdminService adservice;
	
	@PostConstruct
	public void init(){
		System.out.println("in admin init");
	}
	
	/*
	 * Opening login form
	 */
	@GetMapping(value="")
	public String showlogin( ){
		System.out.println("in admin login");
		return "/admin/adminLogin";
	}
	@PostMapping(value="login")
	public String processLogin(RedirectAttributes attrs,@RequestParam String admin,@RequestParam String pass,HttpSession hs){
		System.out.println("in process admin login");
		if(admin.equals(username) && pass.equals(password)){
			hs.setAttribute("admin", true);
			return "redirect:/admin/listAgent";
		}
			attrs.addFlashAttribute("admin_login_error", "Invalid username or password");
			return "redirect:/admin";
	}
	
	/*
	 * Listing all the Agents
	 */
	@GetMapping(value="/listAgent")
	public String listAgent(Model map,HttpSession hs){
		if(hs.getAttribute("admin")	== null){
			return "redirect:/admin";
		}
		System.out.println("in admin list");
		map.addAttribute("agent_list",adservice.getAllAgents());
		return "/admin/listAgent";
	}
	
	/*
	 * Adding a new Agent
	 */
	@GetMapping(value="/register")
	public String showAddAgentForm(Agent a,Model map,HttpSession hs){
		if(hs.getAttribute("admin") != null){
			System.out.println("in show add agent form");
			return "admin/AgentRegister";
		}
		return "redirect:/admin";
	}
	
	@PostMapping(value="/register")
	public String processAddAgent(RedirectAttributes attrs,@Valid Agent a, BindingResult res){
		System.out.println("In agent reg process");
		if(res.hasErrors()){
			System.out.println("Error in agent registration");
			return "admin/AgentRegister";
		}
		attrs.addFlashAttribute("agent_reg",adservice.addAgent(a));
		return "redirect:/admin/listAgent";
	}
	
	/*
	 * Updating a Agent
	 */
	@GetMapping(value="/update/{aId}")
	public String showUpdateForm(@PathVariable Integer aId,Agent a,Model map){
		System.out.println("In show update agent");
		return "admin/updateAgent";
	}
	@PostMapping(value="/update/{aId}")
	public String processUpdateForm(@PathVariable Integer aId,@Valid Agent a,Model map,BindingResult res,HttpSession hs,RedirectAttributes attrs){
		if(res.hasErrors()){
			System.out.println("Error in updation of agent");
			return "admin/updateAgent";
		}
		a.setId(aId);
		attrs.addFlashAttribute("agent_update", adservice.updateAgent(a));
		return "redirect:/admin/listAgent";
	}
	
	/*
	 * Adding product for a Agent
	 */
	@GetMapping(value="/add/{aId}")
	public String showAddProductForm(@PathVariable Integer aId,Product p,Model map){
		System.out.println("In add product form");
		return "/admin/addProduct";
	}
	@PostMapping(value="/add/{aId}")
	public String processAddProduct(@PathVariable Integer aId,@Valid Product p,Model map,BindingResult res,HttpSession hs,RedirectAttributes attrs){
		if(res.hasErrors()){
			System.out.println("Error in updation of agent");
			return "redirect:/admin/listAgent";
		}
		Agent a = adservice.getAgentById(aId);
		p.setCompany(a);
		attrs.addFlashAttribute("product_status", adservice.addProduct(p));
		return "redirect:/admin/listAgent";
		
	}
	
	/*
	 * Getting Product List for a Agent
	 */
	@GetMapping(value="/product/{aId}")
	public String showProductForAgent(@PathVariable Integer aId,Model map){
		System.out.println("in product list");
		Agent a = adservice.getAgentById(aId);
		map.addAttribute("prod_list",adservice.getProducts(a));
		return "/admin/listProducts";
	}
	
	/*
	 * To logout 
	 */
	@GetMapping(value="/logout")
	public String adminLogout(HttpSession hs){
		hs.invalidate();
		return "redirect:/";
	}
	/*
	 * Global Mapping
	 */
	/*@GetMapping("/{path}")
	public String globalMapper(@PathVariable String path) {
		System.out.println("in global " + path);
		return "/admin/"+path;
	}*/
}
