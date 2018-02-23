package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_MULTI_AED_SUCCESS_REPORT", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
public class DdpMultiAedSuccessReport {
	
		@Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    @Column(name = "MAEDR_ID")
	    private Integer maedrId;

	    public Integer getMaedrId() {
	        return maedrId;
	    }

	    public void setMaedrId(Integer maedrId) {
	        this.maedrId = maedrId;
	    }
}
