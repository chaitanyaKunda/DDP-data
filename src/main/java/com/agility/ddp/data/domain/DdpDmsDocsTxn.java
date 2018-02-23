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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_DMS_DOCS_TXN", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpCategorizedDetails", "ddpCategorizedDocss", "ddpDmsDocsDetails", "dtxGenSystem" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_DMS_DOCS_TXN", schema = "dbo", finders = { "findDdpDmsDocsTxnsByDdpCategorizedDetails", "findDdpDmsDocsTxnsByDdpCategorizedDocss", "findDdpDmsDocsTxnsByDdpDmsDocsDetails", "findDdpDmsDocsTxnsByDtxArchiveEquals", "findDdpDmsDocsTxnsByDtxGenSystemEquals", "findDdpDmsDocsTxnsByDtxGenSystemLike", "findDdpDmsDocsTxnsByDtxIsProcessReqEquals", "findDdpDmsDocsTxnsByDtxIsProcessReqNotEquals", "findDdpDmsDocsTxnsByDtxRObjectIdEquals", "findDdpDmsDocsTxnsByDtxRObjectIdIsNotNull", "findDdpDmsDocsTxnsByDtxRObjectIdIsNull", "findDdpDmsDocsTxnsByDtxRObjectIdLike", "findDdpDmsDocsTxnsByDtxRetentionDateIsNotNull", "findDdpDmsDocsTxnsByDtxRetentionDateIsNull", "findDdpDmsDocsTxnsByDtxRetentionIdBetween", "findDdpDmsDocsTxnsByDtxRetentionIdEquals", "findDdpDmsDocsTxnsByDtxRetentionIdIsNotNull", "findDdpDmsDocsTxnsByDtxRetentionIdIsNull", "findDdpDmsDocsTxnsByDtxStatusEquals", "findDdpDmsDocsTxnsByDtxStatusNotEquals", "findDdpDmsDocsTxnsByDtxTransLogsIsNotNull", "findDdpDmsDocsTxnsByDtxTransLogsIsNull" })
public class DdpDmsDocsTxn {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "DTX_ID", insertable = false)
    private Integer dtxId;

    public Integer getDtxId() {
        return this.dtxId;
    }

    public void setDtxId(Integer id) {
        this.dtxId = id;
    }
}
