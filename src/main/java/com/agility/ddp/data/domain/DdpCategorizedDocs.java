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
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_CATEGORIZED_DOCS", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ddpCategorizedAuditTxns", "catDtxId", "catRulId" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_CATEGORIZED_DOCS", schema = "dbo", finders = { "findDdpCategorizedDocsesByCatCurrentPmEquals", "findDdpCategorizedDocsesByCatCurrentPmFailedCountEquals", "findDdpCategorizedDocsesByCatCurrentPmSeqEquals", "findDdpCategorizedDocsesByCatDtxId", "findDdpCategorizedDocsesByCatNextPmEquals", "findDdpCategorizedDocsesByCatPrevPmEquals", "findDdpCategorizedDocsesByCatRdtIdEquals", "findDdpCategorizedDocsesByCatRulId", "findDdpCategorizedDocsesByCatRuleTypeEquals", "findDdpCategorizedDocsesByCatStatusEquals", "findDdpCategorizedDocsesByCatSynIdEquals", "findDdpCategorizedDocsesByCatTotalPmReqEquals", "findDdpCategorizedDocsesByDdpCategorizedAuditTxns" })
public class DdpCategorizedDocs {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CAT_ID", insertable = false)
    private Integer catId;

    public Integer getCatId() {
        return this.catId;
    }

    public void setCatId(Integer id) {
        this.catId = id;
    }
}
