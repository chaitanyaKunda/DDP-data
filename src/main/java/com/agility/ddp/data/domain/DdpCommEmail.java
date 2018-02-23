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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMM_EMAIL", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpEmailAttachments" })
@RooJson(deepSerialize = true)
public class DdpCommEmail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CEM_EMAIL_ID", insertable = false)
    private Integer cemEmailId;

    public Integer getCemEmailId() {
        return this.cemEmailId;
    }

    public void setCemEmailId(Integer id) {
        this.cemEmailId = id;
    }
}
