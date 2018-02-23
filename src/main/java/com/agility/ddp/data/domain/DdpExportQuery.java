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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_EXPORT_QUERY", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpExportQuery {
	 
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
	    @Column(name = "EXQ_ID")
	    private Integer exqId;
	    
	    public Integer getExqId() {
	        return this.exqId;
	    }
	    
	    public void setExqId(Integer id) {
	        this.exqId = id;
	    }
}
