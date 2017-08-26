package com.ebim.factory.web;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ebim.factory.model.Menu;
import com.ebim.factory.model.Role;
import com.ebim.factory.model.User;
import com.ebim.factory.service.MenuService;
import com.ebim.factory.service.SecurityService;
import com.ebim.factory.service.UserService;
import com.ebim.factory.validator.UserValidator;

@Controller
public class UserController {
	
    @Autowired
    private MenuService menuService;
    @Autowired
    private UserService userService;
    @Autowired
    private SecurityService securityService;
    @Autowired
    private UserValidator userValidator;
    
    Map<String, Object> myUser;
    Map<String, Object> myModel ;
    List<Menu> myMenu;

    @RequestMapping(value = "/personal", method = RequestMethod.GET)
    public String registration(Model model,HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("userForm", new User());
    	
        User usuario = userService.findByUsername(getPrincipal());    	
        myModel = new HashMap<String, Object>();
        List<User> listaUsers = userService.findAllUsers();        
		
		for (Role role : usuario.getRoles()){   		 
    		myMenu = menuService.getMenu(role.getName());
    	 }
		
		myModel.put("menu", myMenu);
		myModel.put("usuario",usuario);
                myModel.put("list_user",listaUsers );
		
        request.setAttribute("pageInfo", myModel);

        
        return "personal";
    }

    @RequestMapping(value = "/personal", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, 
    							Model model,
    							HttpServletRequest request, HttpServletResponse response) {
      
    	userValidator.validate(userForm, bindingResult);
    	User usuario = userService.findByUsername(getPrincipal());    	
		myModel = new HashMap<String, Object>();
		
		for (Role role : usuario.getRoles()){   		 
    		myMenu = menuService.getMenu(role.getName());
    	 }
		
		myModel.put("menu", myMenu);
		myModel.put("usuario",usuario);
		
    	
        if (bindingResult.hasErrors()) {
        	

            request.setAttribute("pageInfo", myModel);
            return "personal";
        }

        userService.save(userForm);
        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }
    
    /* AGREGADO 24-8-17, JOSIMAR */ 
    
    @RequestMapping(value = "/regisPersonal", method = RequestMethod.GET)
    public String regisPeronal(Model model,HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("userForm", new User());//este form esta listo para recibir lo del post
    	
        User usuario = userService.findByUsername(getPrincipal());    	
        myModel = new HashMap<String, Object>();		
		for (Role role : usuario.getRoles()){   		 
    		myMenu = menuService.getMenu(role.getName());
    	 }
		
		myModel.put("menu", myMenu);
		myModel.put("usuario",usuario);
                request.setAttribute("pageInfo", myModel);
                
        return "regisPersonal";
    }
    
    
    @RequestMapping(value = "/regisPersonal", method = RequestMethod.POST)
    public String regisPeronal(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, 
    							Model model,
    							HttpServletRequest request, HttpServletResponse response) {
      
    	userValidator.validate(userForm, bindingResult);
    	User usuario = userService.findByUsername(getPrincipal());    	
		myModel = new HashMap<String, Object>();
		
		for (Role role : usuario.getRoles()){   		 
    		myMenu = menuService.getMenu(role.getName());
    	 }
		
		myModel.put("menu", myMenu);
		myModel.put("usuario",usuario);
		
    	
        if (bindingResult.hasErrors()) {
            request.setAttribute("pageInfo", myModel);
            return "personal";
        }

        userService.save(userForm);

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/personal";
    }
    
     /*END */   

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, 
    					String error, 
    					String logout,
    					HttpServletRequest request, HttpServletResponse response) {
       
    	
    	if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");    	   		

        if (logout != null){
        	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        	if (auth != null){    
                new SecurityContextLogoutHandler().logout(request, response, auth);
                SecurityContextHolder.getContext().setAuthentication(null);
            }
            model.addAttribute("message", "You have been logged out successfully.");
        }
		
        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model, HttpServletRequest request) {
        	
    	User usuario = userService.findByUsername(getPrincipal());
    	    	
		myModel = new HashMap<String, Object>();
		
		for (Role role : usuario.getRoles()){   		 
    		myMenu = menuService.getMenu(role.getName());
    	 }
		
		myModel.put("menu", myMenu);
		myModel.put("usuario",usuario);
		
        request.setAttribute("pageInfo", myModel);
		
    	return "welcome";
    }
    
    
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
            
        } else {
            userName = principal.toString();
        }
        return userName;
    }
    
    
 }
