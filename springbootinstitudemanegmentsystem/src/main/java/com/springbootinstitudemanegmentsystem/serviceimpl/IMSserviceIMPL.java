package com.springbootinstitudemanegmentsystem.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootinstitudemanegmentsystem.model.Student;
import com.springbootinstitudemanegmentsystem.repo.IMSRepositoryI;
import com.springbootinstitudemanegmentsystem.servicei.IMSserviceI;
@Service
public class IMSserviceIMPL implements IMSserviceI {

	@Autowired
	IMSRepositoryI imsr;
	
	@Override
	public void save(Student s) {
    imsr.save(s);
	}

	@Override
	public List<Student> showAllData() {
		Iterable<Student> all = imsr.findAll();
		return (List<Student>) all;
	}

	@Override
	public List<Student> deleteData(int id) {
		imsr.deleteById(id);
		
		return (List<Student>) imsr.findAll();
	}

	@Override
	public Student editData(int id) {
		Optional<Student> byId = imsr.findById(id);
		if(byId.isPresent()) {
			Student s = byId.get();
			return s;
		}else {
			return null;
		}
		
	}

	@Override
	public List<Student> updatedata(Student s) {
		imsr.save(s);
		return (List<Student>) imsr.findAll();
	}
	
	

}
