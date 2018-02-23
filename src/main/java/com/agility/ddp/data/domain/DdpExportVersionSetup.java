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
@RooToString(excludeFields = { "evsRdtId" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_EXPORT_VERSION_SETUP", schema = "dbo", finders = { "findDdpExportVersionSetupsByEvsRdtId" })
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_EXPORT_VERSION_SETUP", schema = "dbo")
public class DdpExportVersionSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "EVS_ID")
    private Integer evsId;

    public Integer getEvsId() {
        return this.evsId;
    }

    public void setEvsId(Integer id) {
        this.evsId = id;
    }
}
