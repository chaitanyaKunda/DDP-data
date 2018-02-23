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
@RooToString
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMM_UNC", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpCommUnc {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CUN_UNC_ID", insertable = false)
    private Long cunUncId;

    public Long getCunUncId() {
        return this.cunUncId;
    }

    public void setCunUncId(Long id) {
        this.cunUncId = id;
    }
}
