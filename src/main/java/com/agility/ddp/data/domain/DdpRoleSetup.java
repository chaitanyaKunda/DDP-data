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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_ROLE_SETUP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "rlsParentGrpId", "rlsRoleId", "rlsChildUsrId" })
@RooJson(deepSerialize = true)
public class DdpRoleSetup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RLS_ID", insertable = false)
    private Integer rlsId;

    public Integer getRlsId() {
        return this.rlsId;
    }

    public void setRlsId(Integer id) {
        this.rlsId = id;
    }
}
