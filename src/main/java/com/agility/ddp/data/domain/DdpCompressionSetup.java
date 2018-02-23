package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMPRESSION_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooToString(excludeFields = { "ddpAedRules", "ddpExportRules", "ddpMultiAedRules" })
public class DdpCompressionSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CTS_COMPRESSION_ID", insertable = false)
    private Integer ctsCompressionId;

    public Integer getCtsCompressionId() {
        return this.ctsCompressionId;
    }

    public void setCtsCompressionId(Integer id) {
        this.ctsCompressionId = id;
    }
}
