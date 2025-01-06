package com.springbootinstitudemanegmentsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springbootinstitudemanegmentsystem.model.Student;
import com.springbootinstitudemanegmentsystem.servicei.IMSserviceI;

@Controller
public class IMSController {

	@Autowired
	IMSserviceI imss;
	
	@RequestMapping("/")
	public String prelogin() {
		return "login";
		}

	@RequestMapping("/enterdata")
	public String enterData() {
		return "adddata";
	}
	@RequestMapping("/save")
	public String save(@ModelAttribute Student s,Model m) {
		imss.save(s);
		
		return "login";
		
	}
	@RequestMapping("/showdata")
	public String showAllData(Model m) {
		List<Student> showAllData = imss.showAllData();
		m.addAttribute("data", showAllData);
		return "showalldata";
	}
	@RequestMapping("/delete")
	public String deleteData(@RequestParam ("id") int id,Model m) {
		List<Student> deleteData = imss.deleteData(id);
		m.addAttribute("data", deleteData);
		return "showalldata";
		
	}

	
	@RequestMapping("/edit")
	public String editData(@RequestParam ("id") int id,Model m) {
		Student s = imss.editData(id);
		if(s!=null) {
			m.addAttribute("data",s);
			return "edit";
		}
			return "login";
		}

	@RequestMapping("/update")
	public String updateData(@ModelAttribute Student s,Model m) {
	List<Student> updatedata = imss.updatedata(s);
	m.addAttribute("data", updatedata);
		
		
		return "showalldata";
		
	}
	
}
