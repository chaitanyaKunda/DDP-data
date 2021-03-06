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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_RULE", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_RULE", schema = "dbo", finders = { "findDdpRulesByDdpAedRule", "findDdpRulesByDdpExportRule" })
@RooToString(excludeFields = { "ddpAedRule", "ddpExportRule", "ddpRuleDetail", "ddpCategorizedDocss", "ddpRulePmSvcs", "ddpRuleDetails", "ddpMultiAedRule", "ddpEmailTriggerSetups" })
public class DdpRule {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RUL_ID")
    private Integer rulId;

    public Integer getRulId() {
        return this.rulId;
    }

    public void setRulId(Integer id) {
        this.rulId = id;
    }
}
