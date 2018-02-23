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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_VALUE_ASST", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpValueAsst {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "VLA_ID", insertable = false)
    private Integer vlaId;

    public Integer getVlaId() {
        return this.vlaId;
    }

    public void setVlaId(Integer id) {
        this.vlaId = id;
    }
}
