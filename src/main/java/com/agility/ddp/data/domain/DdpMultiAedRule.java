package com.agility.ddp.data.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_MULTI_AED_RULE", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpRule", "maedCommunicationId", "maedCompressionId", "maedDocnameConvId", "maedMergeId", "maedNotificationId", "maedSchedulerId" })
@RooJson(deepSerialize = true)
public class DdpMultiAedRule {
}
