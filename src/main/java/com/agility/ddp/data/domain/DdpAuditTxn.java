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
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", table = "DDP_AUDIT_TXN", schema = "dbo", sequenceName = "")
public class DdpAuditTxn {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ATX_ID", insertable = false)
    private Integer atxId;

    public Integer getAtxId() {
        return this.atxId;
    }

    public void setAtxId(Integer id) {
        this.atxId = id;
    }
}
