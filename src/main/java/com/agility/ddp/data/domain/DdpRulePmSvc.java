package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_RULE_PM_SVC", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "rpsPsrId", "rpsRuleId" })
@RooJson(deepSerialize = true)
public class DdpRulePmSvc {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RPS_ID", insertable = false)
    private Integer rpsId;

    public Integer getRpsId() {
        return this.rpsId;
    }

    public void setRpsId(Integer id) {
        this.rpsId = id;
    }
}
