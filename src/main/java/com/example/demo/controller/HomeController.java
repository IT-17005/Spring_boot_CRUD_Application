package com.example.demo.controller;

import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Created by habib on 10/18/19.
 */

@Controller
public class HomeController {

    @Autowired
  private StudentDao studentDao;

    @GetMapping({"/dashboard","/"})
    public String getDashboard(Model model,HttpServletRequest request) {
        System.out.println("Visited Dashboard...");
        Student student = new Student();
        model.addAttribute("student",student);
        return "dashboard";
    }
    @PostMapping({"/dashboard","/"})
    public String postDashboard(@ModelAttribute ("student") Student student) {
        System.out.println("I'm in post method...");
        studentDao.save(student);
        return "redirect:/StudentList";
    }
    @GetMapping("/StudentList")
    public String StudentList( Model model) {
        List<Student> list = (List<Student>) studentDao.findAll();
        model.addAttribute("mylist", list);
        return "StudentList";
    }

    @GetMapping("/EditList")
    public String AddViewStudent( Model model,HttpServletRequest request,@RequestParam(value = "id", required=false) Integer id ) {
        Student student= new Student();
        if(id!=null){
            student= studentDao.findById(id).get();
        }
        model.addAttribute("student",student);
        return "EditList";
    }

    @GetMapping("/delete")
    public String deleteElement( HttpServletRequest request,@RequestParam(value = "id", required=false) Integer id ) {
        System.out.println("Visited DELETE.....");
        System.out.println("studentId:"+id);

        // System.out.println(request.getSession().getAttribute("dollarRate"));
        //  Way-01
        Optional<Student> student = studentDao.findById(id);
        studentDao.delete(student.get());
        //  Way-02
        // StudentDao.deleteStudent(stdId);
        return "redirect:/StudentList";
    }

}
