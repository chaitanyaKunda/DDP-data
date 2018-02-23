package com.agility.ddp.data.domain;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString(excludeFields = { "misAppName", "misExpRuleId", "misEntryType", "misEntryNo", "misJobNumber", "misConsignmentId", "misDocType", "misStatus" })
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
@RooJpaEntity(versionField = "", table = "DDP_EXPORT_MISSING_DOCS", schema = "dbo", sequenceName = "")
@RooJpaActiveRecord(table = "DDP_EXPORT_MISSING_DOCS", schema = "dbo", finders = { "findDdpExportMissingDocsesByMisAppNameEquals", "findDdpExportMissingDocsesByMisAppNameIsNull", "findDdpExportMissingDocsesByMisConsignmentIdEquals", "findDdpExportMissingDocsesByMisCreatedDateBetween", "findDdpExportMissingDocsesByMisCreatedDateGreaterThan", "findDdpExportMissingDocsesByMisDocTypeEquals", "findDdpExportMissingDocsesByMisEntryNoEquals", "findDdpExportMissingDocsesByMisEntryTypeEquals", "findDdpExportMissingDocsesByMisExpRuleIdEquals", "findDdpExportMissingDocsesByMisJobNumberEquals", "findDdpExportMissingDocsesByMisStatusEquals" })
public class DdpExportMissingDocs {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "MIS_ID")
    private Integer misId;

    public Integer getMisId() {
        return misId;
    }

    public void setMisId(Integer misId) {
        this.misId = misId;
    }
}
