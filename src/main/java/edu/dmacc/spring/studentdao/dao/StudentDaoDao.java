package edu.dmacc.spring.studentdao.dao;

import java.util.List;

import edu.dmacc.spring.studentdata.Student;

public interface StudentDaoDao {

	public List<Student> listAllStudent();
	public void addStudent(Student student);
	public void updateStudent(Student student);
	public void deleteStudent(int id);
	public Student findStudentById(int id);
}
