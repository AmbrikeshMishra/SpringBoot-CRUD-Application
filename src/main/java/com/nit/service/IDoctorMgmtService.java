package com.nit.service;

import java.util.List;

import com.nit.vo.DoctorVO;

public interface IDoctorMgmtService {
	public List<DoctorVO> findAllDoctors();
	public String registerDoctor(DoctorVO vo);
	public DoctorVO showDoctorById(int id);
	public String editeDoctor(DoctorVO vo);
	public String removeDoctor(int did) throws Exception;

}
