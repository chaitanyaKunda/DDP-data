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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_GROUP_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooToString(excludeFields = { "grsGroupId", "grsUserId" })
public class DdpGroupSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "GRS_ID", insertable = false)
    private Integer grsId;

    public Integer getGrsId() {
        return this.grsId;
    }

    public void setGrsId(Integer id) {
        this.grsId = id;
    }
}
