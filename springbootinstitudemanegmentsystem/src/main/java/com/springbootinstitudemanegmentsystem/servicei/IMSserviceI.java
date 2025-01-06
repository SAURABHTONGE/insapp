package com.springbootinstitudemanegmentsystem.servicei;

import java.util.List;

import com.springbootinstitudemanegmentsystem.model.Student;

public interface IMSserviceI {
	
	public void save(Student s);
	
	public List<Student> showAllData();

	public List<Student> deleteData(int id);

	public Student editData(int id);

	public List<Student> updatedata(Student s);
}
