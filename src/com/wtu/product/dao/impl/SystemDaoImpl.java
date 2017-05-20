package com.wtu.product.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.wtu.product.dao.SystemDao;
import com.wtu.product.model.AgeRange;
import com.wtu.product.model.EducationType;

public class SystemDaoImpl extends SqlSessionDaoSupport implements SystemDao{

	@Override
	public void createAgeRange(AgeRange ageRange) {
		getSqlSession().selectList(AgeRange.class.getName() + ".createAgeRange", ageRange);
	}

	@Override
	public void createEducationType(EducationType educationType) {
		getSqlSession().selectList(EducationType.class.getName() + ".createEducationType", educationType);
	}

	@Override
	public List<AgeRange> queryAllAgeRange() {
		return getSqlSession().selectList(AgeRange.class.getName() + ".queryAllAgeRange");
	}

	@Override
	public List<EducationType> queryNoSelectType(Integer ageRangeId) {
		return getSqlSession().selectList(EducationType.class.getName() + ".queryNoSelectType", ageRangeId);
	}

	@Override
	public List<EducationType> querySelectType(Integer ageRangeId) {
		return getSqlSession().selectList(EducationType.class.getName() + ".querySelectType", ageRangeId);
	}

	@Override
	public void editEducationType(Integer rangeId, Integer type, Integer typeId) {
		Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("rangeId", rangeId);
        parameterMap.put("type", type);
        parameterMap.put("typeId", typeId);
        if (type==1){
        	getSqlSession().insert(EducationType.class.getName() + ".insertEducationType", parameterMap);
        }else {
        	getSqlSession().delete(EducationType.class.getName() + ".deleteEducationType", parameterMap);
        }
	}

	@Override
	public List<EducationType> queryAllType() {
		return getSqlSession().selectList(EducationType.class.getName() + ".queryAllType");
	}

}
