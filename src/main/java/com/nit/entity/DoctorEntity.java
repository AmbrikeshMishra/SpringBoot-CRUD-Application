package com.nit.entity;
import java.time.LocalDateTime;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.Data;
@Entity
@Table(name="MP_JPA_DOCTOR")
@Data
public class DoctorEntity {
//DataProperties
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer did;
	private String dname;
	private String specialization;
	private Double fee;
	private String qlfy;
	
	//meta properties
	@Version
	private Integer updateCount;
	@CreationTimestamp
	@Column(updatable = false,insertable = true)
	private LocalDateTime createdOn;
	@UpdateTimestamp
	@Column(updatable = true,insertable = false)
	private LocalDateTime lastAccessedOn;
	@Column(length=30)
	private String active_SW="active";
	@Column(length=30,updatable = false)
	private String createBy;
	@Column(length=30,insertable = false)
	private String updatedBy;
}
