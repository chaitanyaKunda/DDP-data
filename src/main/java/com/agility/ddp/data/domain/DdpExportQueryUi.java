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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_EXPORT_QUERY_UI", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpExportQueryUi {
	 
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "EQI_ID")
    private Integer eqiId;
    
    public Integer getEqiId() {
        return this.eqiId;
    }
    
    public void setEqiId(Integer id) {
        this.eqiId = id;
    }
}
