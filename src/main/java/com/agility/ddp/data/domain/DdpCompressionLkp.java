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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_COMPRESSION_LKP", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class DdpCompressionLkp {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CML_COPMRESSION_LKP_ID", insertable = false)
    private Integer cmlCopmressionLkpId;

    public Integer getCmlCopmressionLkpId() {
        return this.cmlCopmressionLkpId;
    }

    public void setCmlCopmressionLkpId(Integer id) {
        this.cmlCopmressionLkpId = id;
    }
}
