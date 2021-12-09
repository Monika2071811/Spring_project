package com.monika.springdevtools.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.monika.springdevtools.dao.StudentDAO;
import com.monika.springdevtools.model.Student;


@Controller
public class StudentController {
	
@Autowired
Student std;

@Autowired
StudentDAO stdDao;

String msg;
@RequestMapping("/")
public String login(Model model) {
	model.addAttribute("std", std);
	model.addAttribute("msg", msg);
	return "index";
}
@RequestMapping("/index")
public String loginagain(Model model) {
	model.addAttribute("std", std);
	model.addAttribute("msg", msg);
	return "index";
}
@RequestMapping("validate")
public String validatestd(@ModelAttribute("std") Student std,  Model mv,HttpSession session) {
	
	Student std1 = stdDao.validatestd(std);
	if(std1!=null) {
		session.setAttribute("access", std.getStudentName());
		System.out.println("Login Successfull");
		return "redirect:/home";
	}else {
		System.out.println("Login Failed");
		msg = "Login Failed";
		return "redirect:/";
	}
	
}
@RequestMapping("/registration")
public String showRegistrationForm(Model model) {
	model.addAttribute("std", std);
	return "registration";
}

@RequestMapping("submitform")
public ModelAndView savestd(@ModelAttribute("std") Student std, ModelAndView mv, @RequestParam("pic") MultipartFile file) throws IOException {
	
	System.out.println("In Save User");
	byte[] stdPic = file.getBytes();
	std.setStdPic(stdPic);
	stdDao.addstd(std);
	mv.addObject("msg", "User Added Successfully");
	//mv.addObject("user", user);
	mv.setViewName("registration");
	return mv;
}
@RequestMapping("/home")
public ModelAndView showHomepage(ModelAndView m,HttpServletRequest request) {
	HttpSession session=request.getSession();
	String sess = (String)session.getAttribute("access");
	if(sess!=null) {
	m.addObject("std", std);
	m.setViewName("home");
	return m;
	}else {
		msg="Session Closed. Login Again";
		m.addObject("msg", msg);
		m.setViewName("redirect:/");
		return m;
	}
}
@RequestMapping("getstd")
public ModelAndView getAllstd(ModelAndView mv) {
	List<Student> stdList = stdDao.getAllstd();
	mv.addObject("stdl", stdList);
	mv.addObject("msg", msg);
	mv.setViewName("viewstd");
	return mv;
}
@RequestMapping("viewbyid/{id}")
public ModelAndView getById(@PathVariable int id, ModelAndView mv) {
	Student std = stdDao.getstdById(id);
	mv.addObject("std", std);
	mv.setViewName("showstd");
	return mv;
}
@RequestMapping("viewbyid/home")
public ModelAndView showHomepage1(ModelAndView m,HttpServletRequest request) {
	HttpSession session=request.getSession();
	String sess = (String)session.getAttribute("access");
	if(sess!=null) {
	m.addObject("std", std);
	m.setViewName("redirect:/home");
	return m;
	}else {
		msg="Session Closed. Login Again";
		m.addObject("msg", msg);
		m.setViewName("redirect:/");
		return m;
	}
}
@RequestMapping("viewbyid/getstd")
public ModelAndView getAllstd1(ModelAndView mv) {
	List<Student> stdList = stdDao.getAllstd();
	mv.addObject("stdl", stdList);
	mv.addObject("msg", msg);
	mv.setViewName("viewstd");
	return mv;
}
@RequestMapping("updatestd/{id}")
public String getUpdatestd(@PathVariable int id, Model m) {
	
	Student std = stdDao.getstdById(id);
	System.out.println("In Controller : "+std);
	m.addAttribute("std", std);
	return "updatestd";
	
}

@RequestMapping("saveupdate")
public String saveUpdate(@ModelAttribute("std") Student std,@RequestParam("updatedPic") MultipartFile file) throws IOException {

	System.out.println("In Update user");
	byte[] stdPic=file.getBytes();
	std.setStdPic(stdPic);
	stdDao.updatestd(std);
	return "redirect:/getstd";
	
}



@RequestMapping("deletestd/{id}")
public String deleteUser(@PathVariable int id) {
	stdDao.deletestd(id);
	return "redirect:/getstd";
}
@RequestMapping("updatestd/home")
public ModelAndView showHomepage2(ModelAndView m,HttpServletRequest request) {
	HttpSession session=request.getSession();
	String sess = (String)session.getAttribute("access");
	if(sess!=null) {
	m.addObject("std", std);
	m.setViewName("redirect:/home");
	return m;
	}else {
		msg="Session Closed. Login Again";
		m.addObject("msg", msg);
		m.setViewName("redirect:/");
		return m;
	}
}

@RequestMapping("logout")
public String destroySession(HttpServletRequest request) {
request.getSession().invalidate();
return "redirect:/";
}





}
