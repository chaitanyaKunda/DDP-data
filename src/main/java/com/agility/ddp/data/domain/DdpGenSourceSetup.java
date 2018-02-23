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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_GEN_SOURCE_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "gssRdtId" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_GEN_SOURCE_SETUP", schema = "dbo", finders = { "findDdpGenSourceSetupsByGssRdtId" })
public class DdpGenSourceSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "GSS_ID")
    private Integer gssId;

    public Integer getGssId() {
        return this.gssId;
    }

    public void setGssId(Integer id) {
        this.gssId = id;
    }
}
