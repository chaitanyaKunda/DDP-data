package com.agility.ddp.data.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", sequenceName = "", table = "DMS_DDP_SYN", schema = "dbo")
public class DmsDdpSyn {
}
