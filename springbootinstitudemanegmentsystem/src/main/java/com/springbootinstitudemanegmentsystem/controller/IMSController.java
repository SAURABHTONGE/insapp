package com.springbootinstitudemanegmentsystem.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springbootinstitudemanegmentsystem.model.Batch;
import com.springbootinstitudemanegmentsystem.model.Course;
import com.springbootinstitudemanegmentsystem.model.Faculty;
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
	public String save(@RequestParam("name") String name,
			@RequestParam("photo") MultipartFile photo,
			@RequestParam("b.bname") String bname,
			@RequestParam("b.f.fname") String fname,
			@RequestParam("b.f.c.cname") String cname,Model m) throws IOException {
		
		Course c=new Course();
		c.setCname(cname);
		
		Faculty f=new Faculty();
		f.setFname(fname);
		f.setC(c);
		
		Batch b=new Batch();
		b.setBname(bname);
		b.setF(f);
		
		Student s=new Student();
		s.setB(b);
		s.setName(name);
        String image = Base64.getEncoder().encodeToString(photo.getBytes());		

		s.setPhoto(image);
		
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
