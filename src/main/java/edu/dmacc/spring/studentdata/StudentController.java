package edu.dmacc.spring.studentdata;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	@Autowired StudentDao dao;
	private static final String[ ] countries = { "France", "United States", "Germany", "England", "Australia", "Spain", "China", "Japan" };
	
	@RequestMapping(value = "/form")
	public ModelAndView student( ){
		ModelAndView modelAndView = new ModelAndView( );
		modelAndView.setViewName("studentForm");
		modelAndView.addObject("student", new Student( ));
		modelAndView.addObject("countries", countries);
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processStudent(Student student){
		ModelAndView modelAndView = new ModelAndView();
		dao.insertStudent(student);
		modelAndView.setViewName("studentResult");
		modelAndView.addObject("s", student);
		return modelAndView;
	}

	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Student> allStudents = dao.getAllStudents();
		modelAndView.setViewName("viewAllStudents");
		modelAndView.addObject("all", allStudents);
		return modelAndView;
	}

	
	@Bean
	public StudentDao dao(){
		StudentDao bean = new StudentDao();
		return bean;
	}

}
