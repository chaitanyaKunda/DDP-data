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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_MULTI_EMAILS", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "mesCmsId" })
@RooJson(deepSerialize = true)
public class DdpMultiEmails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "MES_EMAIL_ID")
    private Integer mesEmailId;
    
    public Integer getMesEmailId() {
        return this.mesEmailId;
    }
    
    public void setMesEmailId(Integer id) {
        this.mesEmailId = id;
    }
}
