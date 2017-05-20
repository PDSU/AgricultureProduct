package com.wtu.product.dao;

import java.util.List;

import com.wtu.product.model.Answer;
import com.wtu.product.model.Child;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.Question;
import com.wtu.product.model.User;

public interface QuestionDao {

	public void createQuestion(Question question);
	public void createAnwer(Answer answer);
    public List<Question> queryAllQuestions(Pagination pagination);
    public Integer getQuestionCount(String keyword);
    public Question getQuestionById(Integer questionId);
    public void deletedQuestion(Integer questionId);
    public List<Question> queryNewQuestion(User user, Child child);
    public List<Question> queryQuestionByKeyWord(String keyword);
}
