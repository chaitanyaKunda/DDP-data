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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_SOURCE_SYSTEM_DETAIL", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ssdApplicationCode" })
@RooJson(deepSerialize = true)
public class DdpSourceSystemDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SSD_ID", insertable = false)
    private Integer ssdId;

    public Integer getSsdId() {
        return this.ssdId;
    }

    public void setSsdId(Integer id) {
        this.ssdId = id;
    }
}
