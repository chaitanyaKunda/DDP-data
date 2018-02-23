package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_RATE_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJpaActiveRecord(table = "DDP_RATE_SETUP", schema = "dbo", finders = { "findDdpRateSetupsByDdpRuleDetail" })
@RooJson(deepSerialize = true)
@RooToString(excludeFields = { "ddpRuleDetail", "rtsRdtId" })
public class DdpRateSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RTS_ID")
    private Integer rtsId;

    public Integer getRtsId() {
        return this.rtsId;
    }

    public void setRtsId(Integer id) {
        this.rtsId = id;
    }
}
