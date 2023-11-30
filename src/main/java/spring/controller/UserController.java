package spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.entity.SportEquipment;
import spring.entity.User;
import spring.service.SportEquipmentService;
import spring.service.UserService;

@Controller
@RequestMapping
public class UserController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private SportEquipmentService sportEquipmentService;
    
    @GetMapping(value = {"/","/home"})
    public String homePage(HttpSession session, Model model) {
    	session.getAttribute("user");
    	List<SportEquipment> sportEquipments = sportEquipmentService.getSportEquipments();
        model.addAttribute("sportEquipments", sportEquipments);
    	return "HomePage";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "Register";
    }

    @PostMapping("/register")
    public String processRegistrationForm(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "Login";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "Login";
    }

    @PostMapping("/login")
    public String processLoginForm(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session) {
        User user = userService.checkLogin(email, password);

        if (user != null) {
        	model.addAttribute("user",user);
        	session.setAttribute("user", user);
        	session.getAttribute("sportEquipments");
            return "redirect:/home";
        } else {
            model.addAttribute("loginError", "Đăng nhập thất bại, vui lòng kiểm tra email và mật khẩu.");
            return "Login";
        }
    }
}
