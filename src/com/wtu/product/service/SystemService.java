package com.wtu.product.service;

import java.util.List;

import com.wtu.product.model.AgeRange;
import com.wtu.product.model.EducationType;

public interface SystemService {

	public void saveAgeRange(AgeRange ageRange);
	public List<AgeRange> getAllAgeRange();
	public void saveEducationType(EducationType educationType);
	public void upateEducationType(Integer rangeId,Integer type,Integer typeId);
	public List<EducationType> getNoSelectType(Integer ageRangeId);
	public List<EducationType> getSelectType(Integer ageRangeId);
	public List<EducationType> getAllType();
}
