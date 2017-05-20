package com.wtu.product.dao;

import java.util.List;

import com.wtu.product.model.AgeRange;
import com.wtu.product.model.EducationType;

public interface SystemDao {
	public void createAgeRange(AgeRange ageRange );
	public void createEducationType(EducationType educationType);
	public List<AgeRange> queryAllAgeRange();
	public List<EducationType> queryNoSelectType(Integer ageRangeId);
	public List<EducationType> querySelectType(Integer ageRangeId);
	public void editEducationType(Integer rangeId,Integer type,Integer typeId);
	public List<EducationType> queryAllType();
}
