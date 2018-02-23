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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_NOTIFICATION", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_NOTIFICATION", schema = "dbo", finders = { "findDdpNotificationsByDdpAedRules", "findDdpNotificationsByDdpExportRules", "findDdpNotificationsByDdpRuleDetails", "findDdpNotificationsByNotCreatedDateBetween", "findDdpNotificationsByNotCreatedDateEquals", "findDdpNotificationsByNotFailureEmailAddressEquals", "findDdpNotificationsByNotModifiedDateBetween", "findDdpNotificationsByNotModifiedDateEquals", "findDdpNotificationsByNotStatusEquals", "findDdpNotificationsByNotSuccessEmailAddressEquals" })
@RooToString(excludeFields = { "ddpAedRules", "ddpExportRules", "ddpRuleDetails", "ddpMultiAedRules" })
public class DdpNotification {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "NOT_ID", insertable = false)
    private Integer notId;

    public Integer getNotId() {
        return this.notId;
    }

    public void setNotId(Integer id) {
        this.notId = id;
    }
}
