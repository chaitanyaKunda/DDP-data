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
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "copRdtId" })
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMM_OPTIONS_SETUP", schema = "dbo")
@RooJpaActiveRecord(table = "DDP_COMM_OPTIONS_SETUP", schema = "dbo", finders = { "findDdpCommOptionsSetupsByCopRdtId" })
public class DdpCommOptionsSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "COP_ID")
    private Integer copId;

    public Integer getCopId() {
        return this.copId;
    }

    public void setCopId(Integer id) {
        this.copId = id;
    }
}
