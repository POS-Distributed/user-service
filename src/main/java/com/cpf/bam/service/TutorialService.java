package com.cpf.bam.service;

import java.util.ArrayList;
import java.util.List;

import com.cpf.bam.model.Tutorial;
import org.springframework.stereotype.Service;


@Service
public class TutorialService {

  static List<Tutorial> tutorials = new ArrayList<Tutorial>();
  static long id = 0;

  public List<Tutorial> findAll() {
    return tutorials;
  }

  public List<Tutorial> findByTitleContaining(String title) {
    return tutorials.stream().filter(tutorial -> tutorial.getTitle().contains(title)).toList();
  }
}