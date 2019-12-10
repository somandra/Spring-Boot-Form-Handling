package com.studentRegistration.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentRegistration.dao.StudentDAO;
import com.studentRegistration.model.Student;

@Service
public class StudentService implements IStudentService {

	@Autowired
    StudentDAO studentDao;
	
	public void save(Student student) {
		// TODO Auto-generated method stub
		studentDao.save(student);
		
	}

	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		return studentDao.getAllStudents();
	}
	
	public List<Student> getStudentsByPage(int pageid, int total)
	{
		return studentDao.getStudentsByPage(pageid,total);
	}

	public int count() {
		// TODO Auto-generated method stub
		return studentDao.count();
	}

	public Student getStudentById(int id) {
		// TODO Auto-generated method stub
		return studentDao.getStudentById(id);
	}

	public void update(Student emp) {
		// TODO Auto-generated method stub
		 studentDao.update(emp);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		studentDao.delete(id);
	}

	public void delete() {
		// TODO Auto-generated method stub
		studentDao.delete();
	}

	public List<Student> getStudentByDept(String department) {
		// TODO Auto-generated method stub
		return studentDao.getStudentByDept(department);
	}

	public List<Student> getStudentByGen(String sex) {
		// TODO Auto-generated method stub
		return studentDao.getStudentByGen(sex);
	}

	

}