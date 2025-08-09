package com.nit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.entity.DoctorEntity;
import com.nit.errors.DoctorNotFoundException;
import com.nit.repository.IDoctorRepository;
import com.nit.vo.DoctorVO;
@Service
public class DoctorMgmtServiceImpl implements IDoctorMgmtService{
@Autowired
	private IDoctorRepository doctorRepo;
	@Override
	public List<DoctorVO> findAllDoctors() {
		//Get all doctor records from database
		List<DoctorEntity> entityList=doctorRepo.findAll();
		//Create an empty list to hold DoctorVo objects
		List<DoctorVO> voList=new ArrayList<DoctorVO>();
		//copy data from each DoctorEntity to DoctorVo
		for(DoctorEntity entity : entityList) {
			DoctorVO vo=new DoctorVO();
			BeanUtils.copyProperties(entity, vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public String registerDoctor(DoctorVO vo) {
		//convert VO class obj Entity class obj
		DoctorEntity entity=new DoctorEntity();
		BeanUtils.copyProperties(vo, entity);
		entity.setCreateBy(System.getProperty("user.name"));
		//Use repo
		int idVal=doctorRepo.save(entity).getDid();
	
		return "Doctor is Register with id Value::"+idVal;
	}

	@Override
	public DoctorVO showDoctorById(int id) {
		//use repo
		DoctorEntity entity=doctorRepo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		//convert entity onj to vo object
		DoctorVO vo=new DoctorVO();
		BeanUtils.copyProperties(entity, vo);
		return vo;
	}

	@Override
	public String editeDoctor(DoctorVO vo) {
		//convert Vo obj to Entity obj
		DoctorEntity entity=doctorRepo.findById(vo.getDid()).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		BeanUtils.copyProperties(vo, entity);
		entity.setUpdatedBy(System.getProperty("user.name"));
		//update the object
		doctorRepo.save(entity);
		return vo.getDid()+" Doctor Details are updated";
	}

	@Override
	public String removeDoctor(int did) throws Exception {
		DoctorEntity entity=doctorRepo.findById(did).orElseThrow(()->new DoctorNotFoundException("Invalid Doctor Id"));
		doctorRepo.deleteById(did);
		return did+" Id Doctor is Deleted";
	}

}
