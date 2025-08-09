package com.nit.vo;

import lombok.Data;

@Data
public class DoctorVO {
//DATA PROPERTIES
	private Integer did;
	private String dname;
	private String specialization;
	private Double fee;
	private String qlfy="MBBS";
}
