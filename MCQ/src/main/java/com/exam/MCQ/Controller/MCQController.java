package com.exam.MCQ.Controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.exam.MCQ.DAO.DAOclass;
import com.exam.MCQ.Model.Question;
import com.exam.MCQ.Model.QuestionList;

@Controller
public class MCQController {
	@Autowired
	DAOclass dao;
	
public static QuestionList report; 
	
@RequestMapping("/questionlist")

public String print(Model model ) {
	List<Question> list = dao.questionList();
	QuestionList questionlist =new QuestionList();
			questionlist.setQuestionList(list);
	model.addAttribute("rajlist", questionlist);
	
	return "abc";
}
@RequestMapping("/validate")

public String validate(Model model,@ModelAttribute QuestionList  questionlist) {
	System.out.println(questionlist.getQuestionList());
	report=questionlist;
	int score=dao.generateScore(questionlist.getQuestionList());
	int size = questionlist.getQuestionList().size();
	model.addAttribute("score", score);
	model.addAttribute("size", size);
	return "result";
}

@RequestMapping("/reviewcontroller")
public String review(Model model) {
	model.addAttribute("report",report);
	return "reviewpage";
}

}
