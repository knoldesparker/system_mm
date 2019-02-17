package com.example.demo.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.logging.Logger;
/*
@RestController
@RequestMapping("/student")
public class StudnetController {

    @Autowired
    StudentService studentService;
    private Logger logger = Logger.getLogger(StudnetController.class.getName());


}
@GetMapping
@ResponseBody
public ResponeEntity<List<Student>> listAll(){
    logger.info("List all students");

    try{
        List<Student> students = studentService.getStudents();

        if (students != null && students.size()>0){
            return new ResponseEntity<>(students,HttpStatus.OK);
        }
    }catch (Exception e){
        logger.severe("Something went wrong: " + e);
        return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
    return new ResponseEntity<>(HttpStatus.NO_CONTENT);
}

*/