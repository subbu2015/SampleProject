package com.SpringBootJsp.studentservices;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController  {
	
	private static List<Student> students = new ArrayList<Student>();

	static {
		students.add(new Student("Bill", "Gates",1));
		students.add(new Student("Steve", "Jobs",2));
    }


	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public String index(Model model) {

        String message = "Student Details";

        model.addAttribute("message", message);

        return "index";
    }

	   @RequestMapping(value = { "/studentList" }, method = RequestMethod.GET)
	    public String viewStudentsList(Model model) {
//studentslist --> jsp ref
	        model.addAttribute("studentslist", students);

	        return "listOfstudents";
	    }
}
