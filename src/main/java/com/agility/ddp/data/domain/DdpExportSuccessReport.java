package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_EXPORT_SUCCESS_REPORT", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpExportSuccessReport {
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	 @Column(name = "ESR_ID")
	 private Integer esrId;

	/**
	 * @return the esrId
	 */
	public Integer getEsrId() {
		return esrId;
	}

	/**
	 * @param esrId the esrId to set
	 */
	public void setEsrId(Integer esrId) {
		this.esrId = esrId;
	}
	 
	 
}
