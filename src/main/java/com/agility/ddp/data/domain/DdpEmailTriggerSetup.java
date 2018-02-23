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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_EMAIL_TRIGGER_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "etrRuleId" })
@RooJson(deepSerialize = true)
public class DdpEmailTriggerSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ETR_ID")
    private Integer etrId;

    public Integer getEtrId() {
        return this.etrId;
    }

    public void setEtrId(Integer id) {
        this.etrId = id;
    }
}
