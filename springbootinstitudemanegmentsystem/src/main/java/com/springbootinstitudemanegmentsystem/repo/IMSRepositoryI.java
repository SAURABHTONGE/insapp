package com.springbootinstitudemanegmentsystem.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springbootinstitudemanegmentsystem.model.Student;
@Repository
public interface IMSRepositoryI  extends  CrudRepository<Student, Integer>{
	
	
}