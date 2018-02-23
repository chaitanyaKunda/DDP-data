package com.agility.ddp.data.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpMergeSetup" })
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", table = "DDP_AED_REQ_DOCS", schema = "dbo", sequenceName = "")
public class DdpAedReqDocs {
}
