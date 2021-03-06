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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMM_FTP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpCommFtp {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CFT_FTP_ID", insertable = false)
    private Long cftFtpId;

    public Long getCftFtpId() {
        return this.cftFtpId;
    }

    public void setCftFtpId(Long id) {
        this.cftFtpId = id;
    }
}
