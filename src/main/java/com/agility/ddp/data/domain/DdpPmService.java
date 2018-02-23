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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_PM_SERVICE", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpRulePmSvcs" })
@RooJson(deepSerialize = true)
public class DdpPmService {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PSR_ID", insertable = false)
    private Integer psrId;

    public Integer getPsrId() {
        return this.psrId;
    }

    public void setPsrId(Integer id) {
        this.psrId = id;
    }
}
