package com.exam.MCQ.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.exam.MCQ.Model.Question;
import com.exam.MCQ.Model.QuestionROwMapper;

@Repository
public class DAOclass {
@Autowired
JdbcTemplate jdbctemplate;
	public List<Question> questionList(){
		
	return jdbctemplate.query("select * from questions", new QuestionROwMapper());
	
	}
	public int generateScore(List<Question> questionList) {
		// TODO Auto-generated method stub
		int count=0;
		for (Question ques : questionList) {
			if(ques.getCanswer()==ques.getUanswer())
				count++;
		}
		return count;
	}
}
