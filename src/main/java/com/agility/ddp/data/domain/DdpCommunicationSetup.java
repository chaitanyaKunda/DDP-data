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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMMUNICATION_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooToString(excludeFields = { "ddpAedRules", "ddpExportRules", "ddpRuleDetails", "ddpMultiAedRules", "ddpMultiEmailss" })
public class DdpCommunicationSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CMS_COMMUNICATION_ID", insertable = false)
    private Integer cmsCommunicationId;

    public Integer getCmsCommunicationId() {
        return this.cmsCommunicationId;
    }

    public void setCmsCommunicationId(Integer id) {
        this.cmsCommunicationId = id;
    }
}
