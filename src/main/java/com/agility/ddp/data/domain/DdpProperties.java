package com.agility.ddp.data.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaEntity(identifierType = DdpPropertiesPK.class, versionField = "", sequenceName = "", table = "DDP_PROPERTIES", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpProperties {
}
