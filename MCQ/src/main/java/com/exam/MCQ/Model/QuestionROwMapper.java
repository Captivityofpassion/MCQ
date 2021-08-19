package com.exam.MCQ.Model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class QuestionROwMapper implements RowMapper<Question> {

	public Question mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		Question question = new Question();
		question.setId(rs.getInt("question_id"));
		question.setQuestion(rs.getString("question"));
		question.setOption1(rs.getString("option1"));
		question.setOption2(rs.getString("option2"));
		question.setOption3(rs.getString("option3"));
		question.setOption4(rs.getString("option4"));
		question.setUanswer(rs.getInt("user_answer"));
		question.setCanswer(rs.getInt("correct_answer"));
		
		return question;
	}

}
