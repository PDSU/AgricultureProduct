package com.wtu.product.dao.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.wtu.product.dao.QuestionDao;
import com.wtu.product.dao.SystemDao;
import com.wtu.product.model.AgeRange;
import com.wtu.product.model.Answer;
import com.wtu.product.model.Child;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.Question;
import com.wtu.product.model.User;
import com.wtu.product.util.AgeUtil;
import com.wtu.product.util.SpringUtil;

public class QuestionDaoImpl extends SqlSessionDaoSupport implements QuestionDao {

    @Override
    public void createQuestion(Question question) {
        getSqlSession().insert(Question.class.getName() + ".createQuestion", question);
    }

    @Override
    public List<Question> queryAllQuestions(Pagination pagination) {
        pagination.setTotalCount(this.getQuestionCount(pagination.getKeyWord()));
        if (pagination.getCurrentPage() > pagination.getPageCount()) {
            pagination.setCurrentPage(pagination.getPageCount());
        }
        Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("keyword", "%" + pagination.getKeyWord() + "%");
        parameterMap.put("offset", pagination.getOffset());
        parameterMap.put("pageSize", pagination.getPageSize());
        return getSqlSession().selectList(Question.class.getName() + ".queryAllQuestions", parameterMap);
    }

    @Override
    public Integer getQuestionCount(String keyword) {
    	Integer amount = getSqlSession().selectOne(Question.class.getName() + ".getQuestionCount", "%" + keyword + "%");
        return amount;
    }

    @Override
    public Question getQuestionById(Integer questionId) {
        return getSqlSession().selectOne(Question.class.getName() + ".getQuestionById", questionId);
    }

    @Override
    public void deletedQuestion(Integer questionId) {
        getSqlSession().delete(Question.class.getName() + "deletedQuestion", questionId);
    }

	@Override
	public void createAnwer(Answer answer) {
		getSqlSession().insert(Question.class.getName() + ".createAnwer", answer);
	}

	@Override
	public List<Question> queryNewQuestion(User user, Child child) {
		int ageId = 0;
		if(user != null){
			if(child != null) {
				String birthday = child.getBirthday();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		        Date bithday;
				try {
					bithday = format.parse(birthday);
					int age = AgeUtil.getAgeByBirth(bithday);
					SystemDao systemDao = (SystemDao) SpringUtil.getBean("systemDao");
					List<AgeRange> allAgeRange = systemDao.queryAllAgeRange();
					if(allAgeRange.size()>0){
						for(int i = 0;i<allAgeRange.size();i++) {
							AgeRange ageRange = allAgeRange.get(i);
							if(ageRange.getStartAge()<age && ageRange.getEndAge()>=age){
								ageId=ageRange.getId();
								break;
							}
						}
					}
				} catch (ParseException e) {
					e.printStackTrace();
				}
			}
		}
		return getSqlSession().selectList(Question.class.getName() + ".queryNewQuestion",ageId);
	}

	@Override
	public List<Question> queryQuestionByKeyWord(String keyword) {
		if (keyword == null) {
			keyword = "";
        }
		return getSqlSession().selectList(Question.class.getName() + ".queryQuestionByKeyWord","%" + keyword + "%");
	}
}
