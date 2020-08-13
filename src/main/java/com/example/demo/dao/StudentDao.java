package com.example.demo.dao;

import com.example.demo.entity.Student;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Transactional
public interface StudentDao extends CrudRepository<Student, Integer> {

}
