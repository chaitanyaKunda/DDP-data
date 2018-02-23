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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_GROUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpGroupSetups", "ddpRoleSetups" })
@RooJson(deepSerialize = true)
public class DdpGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "GRP_ID", insertable = false)
    private Integer grpId;

    public Integer getGrpId() {
        return this.grpId;
    }

    public void setGrpId(Integer id) {
        this.grpId = id;
    }
}
