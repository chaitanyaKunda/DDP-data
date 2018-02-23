package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_CATEGORIZATION_HOLDER", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpCategorizationHolder {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CHL_ID")
    private Integer chlId;

    public Integer getChlId() {
        return this.chlId;
    }

    public void setChlId(Integer id) {
        this.chlId = id;
    }
}
