package com.Spring.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Service;

import com.Spring.DAO.impl.SubjectDAO;
import com.Spring.Models.Subject;
import com.Spring.Models.Tutor;
import com.Spring.Service.ISubjectService;

@Service
@Configurable
public class SubjectService implements ISubjectService{

	@Autowired
	private SubjectDAO dao;

	@Override
	public List<Subject> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<Tutor> FindTutorBySubject(String name) {
	
		return dao.findTutorsBySubject(name);
	}

public String findSubjectByTutorId(int id) {
	List<Subject> list = dao.findSubjectsOfTeacher(id);
	String subjects="";
	if(list.size()==1)
		return list.get(0).getName();
	else {
		String sub = list.get(0).getName();
		for(int i=1; i<list.size();i++) {
			sub+=","+list.get(i).getName();
		}
		return sub;
	}
	
}
}
