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
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", table = "DDP_MERGE_SETUP", schema = "dbo", sequenceName = "")
@RooToString(excludeFields = { "ddpAedReqDocs", "ddpAedRules", "ddpExportRules", "ddpMultiAedRules" })
public class DdpMergeSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "MTS_MERGE_ID", insertable = false)
    private Integer mtsMergeId;

    public Integer getMtsMergeId() {
        return this.mtsMergeId;
    }

    public void setMtsMergeId(Integer id) {
        this.mtsMergeId = id;
    }
}
