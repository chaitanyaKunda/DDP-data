package com.agility.ddp.data.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpRule", "aedCommunicationId", "aedCompressionId", "aedDocnameConvId", "aedMergeId", "aedNotificationId", "aedSchedulerId" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_AED_RULE", schema = "dbo", finders = { "findDdpAedRulesByAedCommunicationId", "findDdpAedRulesByAedCompressionId", "findDdpAedRulesByAedSchedulerId", "findDdpAedRulesByDdpRule" })
@RooJpaEntity(versionField = "", table = "DDP_AED_RULE", schema = "dbo", sequenceName = "")
public class DdpAedRule {
}
