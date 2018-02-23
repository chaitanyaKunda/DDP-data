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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_CATEGORIZED_DETAIL", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "cadDtxId" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_CATEGORIZED_DETAIL", schema = "dbo", finders = { "findDdpCategorizedDetailsByCadDtxId", "findDdpCategorizedDetailsByCadOriginSysIdEquals", "findDdpCategorizedDetailsByCadRObjectIdEquals", "findDdpCategorizedDetailsByCadRulesCompletedCountEquals", "findDdpCategorizedDetailsByCadRulesFailedCountEquals", "findDdpCategorizedDetailsByCadRulesInProgressCountEquals", "findDdpCategorizedDetailsByCadServiceTypeEquals", "findDdpCategorizedDetailsByCadStatusEquals", "findDdpCategorizedDetailsByCadTotalRulesReqCountEquals", "findDdpCategorizedDetailsByCadTransMessageEquals" })
public class DdpCategorizedDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CAD_ID", insertable = false)
    private Integer cadId;

    public Integer getCadId() {
        return this.cadId;
    }

    public void setCadId(Integer id) {
        this.cadId = id;
    }
}
