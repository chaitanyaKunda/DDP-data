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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_CATEGORIZED_AUDIT_TXN", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "caxDcdId" })
@RooJson(deepSerialize = true)
public class DdpCategorizedAuditTxn {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CAX_ID", insertable = false)
    private Integer caxId;

    public Integer getCaxId() {
        return this.caxId;
    }

    public void setCaxId(Integer id) {
        this.caxId = id;
    }
}
