package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;

import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	
	@Autowired
	private EntityManager em;
	
	@RequestMapping("/save")
	public ModelAndView save(@RequestParam String name,
							@RequestParam  String email,
							@RequestParam  long phone ,
							@RequestParam  String password)
	{
		Employee e = new Employee(0,name,email,phone,password);
		
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(e);
		et.commit();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manageEmp.jsp");
		mv.addObject("save", "Employee Added Successfully");
		return mv;
	}
	
	@RequestMapping("/all")
	public ModelAndView all()
	{
		List<Employee> el = em.createQuery("from Employee").getResultList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("allEmp.jsp");
		mv.addObject("emps",el);
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteById(@RequestParam int id)
	{
		Employee e = em.find(Employee.class,id);
		
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.remove(e);
		et.commit();
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("allEmp.jsp");
		return all().addObject("del","Employee Id: "+e.getId()+" , "+e.getName()+" Deleted successfully");
	}

	@RequestMapping("/updatepage")
	public ModelAndView updatepage(@RequestParam int id) {
		
		Employee e = em.find(Employee.class, id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateEmp.jsp");
		mv.addObject("e",e);
		return mv;
	}
	
	
	@RequestMapping("/update")
	public ModelAndView updateById(@RequestParam int id,
			@RequestParam String name,
			@RequestParam  String email,
			@RequestParam  long phone ,
			@RequestParam  String password) 
	{
		Employee e = em.find(Employee.class,id);
		e.setName(name);
		e.setEmail(email);
		e.setPassword(password);
		e.setPhone(phone);
		
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(e);
		et.commit();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("allEmp.jsp");
//		mv.addObject("e", e);
		return all();

	}
}
