package com.nit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nit.service.IDoctorMgmtService;
import com.nit.vo.DoctorVO;

import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorOperationController {
	@Autowired
private IDoctorMgmtService docService;
	@GetMapping("/")
	public String showHome() {
		//return lvn
		return "welcome";
		
	}
	@GetMapping("/report")
	public String showReport(Map<String,Object> map) {
		System.out.println("DoctorOperationsControllers.showReport()");
		//use service
		List<DoctorVO> listVO=docService.findAllDoctors();
		//keep the results in shared Memory
		map.put("doctorsList", listVO);
		return "show_report";
	}
	@GetMapping("/register")//for register Doctor Form Page lunching
	public String showRegisterDoctorForm(@ModelAttribute("docVO") DoctorVO vo) {
		//return Lvn (register Doctor form name)
		return "register_doctor_form";
	}
	@PostMapping("/register")
	public String registerDoctor(@ModelAttribute("docVO")DoctorVO vo,HttpSession ses) {
		System.out.println("DoctorOperationController.registerDoctor");
		//use service
		String msg=docService.registerDoctor(vo);
		//keep the result as flash Model Attribute
		ses.setAttribute("resultMsg", msg);
		//return LVN
		return "redirect:report";
	}
	@GetMapping("/edit")
	public String showEditDoctorFormPage(@RequestParam("no")int no,@ModelAttribute("docVO")DoctorVO vo) {
		//use service
		DoctorVO vo1=docService.showDoctorById(no);
		//COPY VO OBJ DATA TO VO1
		System.out.println(vo1);
		BeanUtils.copyProperties(vo1, vo);
		return "edit_doctor_form";
	}
	@PostMapping("/edit")
	public String editDoctor(@ModelAttribute("docVO")DoctorVO vo,RedirectAttributes attrs) {
		System.out.println("DoctorOperation Controller.editDoctor");
		//use service
		String msg=docService.editeDoctor(vo);
		//keep the result result as flash mode Model attribute
		attrs.addFlashAttribute("resultMsg", msg);
		//redirect the request
		return "redirect:report";
	}
	@GetMapping("/delete")
	public String removeDocter(@RequestParam("no")int no,RedirectAttributes attrs)throws Exception{
		System.out.println("remove doctor()");
		//use service
		String msg=docService.removeDoctor(no);
		//keep the result as model attribute
		attrs.addFlashAttribute("resultMsg", msg);
		//forword the request
		return "redirect:report";
	}
}
