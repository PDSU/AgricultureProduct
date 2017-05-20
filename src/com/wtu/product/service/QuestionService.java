package com.wtu.product.service;

import java.util.List;

import com.wtu.product.model.Answer;
import com.wtu.product.model.Child;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.Question;
import com.wtu.product.model.User;
/**
 * The interface of QuestionService.
 * */
public interface QuestionService {

    public void saveQuestion(Question question);
    
    public void saveAnswer(Answer answer);

    public List<Question> getQuestionList(Pagination pagination);

    public Question FindQuestionById(Integer id);

    public void deleteQuestionById(Integer questionId);
    
    public List<Question> getNewQuestion(User user, Child child);
    
    public List<Question> getQuestionByKeyWord(String keyword);
}
