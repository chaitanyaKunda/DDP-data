package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_SOURCE_SYSTEM", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpExportRules", "ddpSourceSystemDetails" })
@RooJson(deepSerialize = true)
public class DdpSourceSystem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SOU_APPLICATION_CODE", length = 16)
    private String souApplicationCode;

    public String getSouApplicationCode() {
        return this.souApplicationCode;
    }

    public void setSouApplicationCode(String id) {
        this.souApplicationCode = id;
    }
}
