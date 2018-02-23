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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_DOCNAME_CONV", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_DOCNAME_CONV", schema = "dbo", finders = { "findDdpDocnameConvsByDcvBranchCodeEquals", "findDdpDocnameConvsByDcvCompanyCodeEquals", "findDdpDocnameConvsByDcvDoctypeCodeEquals", "findDdpDocnameConvsByDcvDupDocNamingConvEquals", "findDdpDocnameConvsByDcvGenNamingConvEquals", "findDdpDocnameConvsByDcvSaveTypeEquals", "findDdpDocnameConvsByDcvStatusEquals", "findDdpDocnameConvsByDdpAedRules", "findDdpDocnameConvsByDdpExportRules" })
@RooToString(excludeFields = { "ddpAedRules", "ddpExportRules", "ddpMultiAedRules" })
public class DdpDocnameConv {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "DCV_ID", insertable = false)
    private Integer dcvId;

    public Integer getDcvId() {
        return this.dcvId;
    }

    public void setDcvId(Integer id) {
        this.dcvId = id;
    }
}
