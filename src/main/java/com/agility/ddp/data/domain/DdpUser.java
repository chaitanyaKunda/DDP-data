package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpGroupSetups", "ddpRoleSetups" })
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", table = "DDP_USER", schema = "dbo", sequenceName = "")
@RooJpaActiveRecord(table = "DDP_USER", schema = "dbo", finders = { "findDdpUsersByUsrRegionEquals", "findDdpUsersByUsrRegionLike", "findDdpUsersByUsrCountryEquals", "findDdpUsersByUsrBranchCodeEquals", "findDdpUsersByUsrBranchCodeLike", "findDdpUsersByUsrBranchCodeNotEquals", "findDdpUsersByUsrCompanyCodeEquals", "findDdpUsersByUsrCompanyCodeLike", "findDdpUsersByUsrCountryLike", "findDdpUsersByUsrCountryNotEquals", "findDdpUsersByUsrDisplayNameEquals", "findDdpUsersByUsrDisplayNameLike", "findDdpUsersByUsrFirstNameEquals", "findDdpUsersByUsrFirstNameLike", "findDdpUsersByUsrLoginIdEquals", "findDdpUsersByUsrLoginIdLike" })
public class DdpUser {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USR_ID", insertable = false)
    private Integer usrId;

    public Integer getUsrId() {
        return this.usrId;
    }

    public void setUsrId(Integer id) {
        this.usrId = id;
    }
}
