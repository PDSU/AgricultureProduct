package com.wtu.product.service.impl;

import java.util.List;

import com.wtu.product.dao.QuestionDao;
import com.wtu.product.model.Answer;
import com.wtu.product.model.Child;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.Question;
import com.wtu.product.model.User;
import com.wtu.product.service.QuestionService;

public class QuestionServiceImpl implements QuestionService {

    private QuestionDao questionDao;

    public void setQuestionDao(QuestionDao questionDao) {
        this.questionDao = questionDao;
    }

    @Override
    public void saveQuestion(Question question) {
        questionDao.createQuestion(question);
    }

    @Override
    public List<Question> getQuestionList(Pagination pagination) {
        List<Question> allQuestions = questionDao.queryAllQuestions(pagination);
        return allQuestions;
    }

    @Override
    public Question FindQuestionById(Integer questionId) {
        Question question = questionDao.getQuestionById(questionId);
        return question;
    }

    @Override
    public void deleteQuestionById(Integer questionId) {
        questionDao.deletedQuestion(questionId);
    }

	@Override
	public void saveAnswer(Answer answer) {
		questionDao.createAnwer(answer);
	}

	@Override
	public List<Question> getNewQuestion(User user, Child child) {
		return questionDao.queryNewQuestion(user, child);
	}

	@Override
	public List<Question> getQuestionByKeyWord(String keyword) {
		return questionDao.queryQuestionByKeyWord(keyword);
	}
}
