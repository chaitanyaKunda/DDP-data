package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_SCHEDULER", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_SCHEDULER", schema = "dbo", finders = { "findDdpSchedulersByDdpAedRules", "findDdpSchedulersByDdpExportRules", "findDdpSchedulersByDdpRuleDetails", "findDdpSchedulersBySchCronExpressionsEquals", "findDdpSchedulersBySchCreatedDateBetween", "findDdpSchedulersBySchCreatedDateEquals", "findDdpSchedulersBySchEndDateBetween", "findDdpSchedulersBySchEndDateEquals", "findDdpSchedulersBySchFailedCountEquals", "findDdpSchedulersBySchIsRunningEquals", "findDdpSchedulersBySchLastFailedRunBetween", "findDdpSchedulersBySchLastFailedRunEquals", "findDdpSchedulersBySchLastRunBetween", "findDdpSchedulersBySchLastRunEquals", "findDdpSchedulersBySchLastRunStatusEquals", "findDdpSchedulersBySchLastSuccessRunBetween", "findDdpSchedulersBySchLastSuccessRunEquals", "findDdpSchedulersBySchModifiedDateEquals", "findDdpSchedulersBySchNextRunBetween", "findDdpSchedulersBySchNextRunEquals", "findDdpSchedulersBySchNotificationIdEquals", "findDdpSchedulersBySchProcessingStatusEquals", "findDdpSchedulersBySchRepeatCountEquals", "findDdpSchedulersBySchRuleCategoryEquals", "findDdpSchedulersBySchRuleTypeEquals", "findDdpSchedulersBySchStartDateBetween", "findDdpSchedulersBySchStartDateEquals", "findDdpSchedulersBySchStatusEquals", "findDdpSchedulersBySchSuccessCountEquals", "findDdpSchedulersBySchTimeIntervalEquals", "findDdpSchedulersBySchTypeEquals" })
@RooToString(excludeFields = { "ddpAedRules", "ddpExportRules", "ddpRuleDetails", "ddpMultiAedRules" })
public class DdpScheduler {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SCH_ID", insertable = false)
    private Integer schId;

    public Integer getSchId() {
        return this.schId;
    }

    public void setSchId(Integer id) {
        this.schId = id;
    }
}
