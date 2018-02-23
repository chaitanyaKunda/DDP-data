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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_RULE_DETAIL", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_RULE_DETAIL", schema = "dbo", finders = { "findDdpRuleDetailsByRdtPartyCode", "findDdpRuleDetailsByRdtNotificationId", "findDdpRuleDetailsByRdtDocType", "findDdpRuleDetailsByRdtGenSystem", "findDdpRuleDetailsByRdtCommunicationId", "findDdpRuleDetailsByRdtCompany", "findDdpRuleDetailsByRdtBranch", "findDdpRuleDetailsByDdpCommOptionsSetups", "findDdpRuleDetailsByRdtRuleId", "findDdpRuleDetailsByRdtRuleTypeEquals", "findDdpRuleDetailsByRdtRuleTypeLike", "findDdpRuleDetailsByRdtRuleTypeNotEquals" })
@RooToString(excludeFields = { "ddpRule", "rdtBranch", "rdtCommunicationId", "rdtCompany", "rdtDocType", "rdtGenSystem", "rdtNotificationId", "rdtPartyCode", "rdtSchedulerId", "ddpCommOptionsSetups", "rdtRuleId", "ddpGenSourceSetups", "ddpRates", "ddpRateSetup", "ddpRateSetups", "ddpExportVersionSetups" })
public class DdpRuleDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RDT_ID")
    private Integer rdtId;

    public Integer getRdtId() {
        return this.rdtId;
    }

    public void setRdtId(Integer id) {
        this.rdtId = id;
    }
}
