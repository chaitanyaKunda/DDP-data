package com.agility.ddp.data.domain;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaEntity(versionField = "", sequenceName = "", table = "DDP_DMS_DOCS_DETAIL", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "dddDtxId" })
@RooJson(deepSerialize = true)
@RooJpaActiveRecord(table = "DDP_DMS_DOCS_DETAIL", schema = "dbo", finders = { "findDdpDmsDocsDetailsByDddBatchNameEquals", "findDdpDmsDocsDetailsByDddBillOfLadingNumberEquals", "findDdpDmsDocsDetailsByDddBranchDestinationEquals", "findDdpDmsDocsDetailsByDddBranchSourceEquals", "findDdpDmsDocsDetailsByDddCarrierRefEquals", "findDdpDmsDocsDetailsByDddClientIdEquals", "findDdpDmsDocsDetailsByDddCompanyDestinationEquals", "findDdpDmsDocsDetailsByDddCompanySourceEquals", "findDdpDmsDocsDetailsByDddConsigneeEquals", "findDdpDmsDocsDetailsByDddConsignmentIdEquals", "findDdpDmsDocsDetailsByDddContentSizeEquals", "findDdpDmsDocsDetailsByDddContentTypeEquals", "findDdpDmsDocsDetailsByDddControlDocTypeEquals", "findDdpDmsDocsDetailsByDddControlDocTypeIsNotNull", "findDdpDmsDocsDetailsByDddControlDocTypeIsNull", "findDdpDmsDocsDetailsByDddControlDocTypeLike", "findDdpDmsDocsDetailsByDddControlDocTypeNotEquals", "findDdpDmsDocsDetailsByDddCustomsEntryNoEquals", "findDdpDmsDocsDetailsByDddDebitsBackEquals", "findDdpDmsDocsDetailsByDddDebitsForwardEquals", "findDdpDmsDocsDetailsByDddDeptDestinationEquals", "findDdpDmsDocsDetailsByDddDeptSourceEquals", "findDdpDmsDocsDetailsByDddDocRefEquals", "findDdpDmsDocsDetailsByDddDtxId", "findDdpDmsDocsDetailsByDddFileTypeEquals", "findDdpDmsDocsDetailsByDddFinalAgentIdEquals", "findDdpDmsDocsDetailsByDddGeneratingSystemEquals", "findDdpDmsDocsDetailsByDddGlobalDocRefEquals", "findDdpDmsDocsDetailsByDddHouseAirwayBillNumEquals", "findDdpDmsDocsDetailsByDddInitialAgentEquals", "findDdpDmsDocsDetailsByDddIntermediateAgentEquals", "findDdpDmsDocsDetailsByDddIsRatedEquals", "findDdpDmsDocsDetailsByDddJobNumberEquals", "findDdpDmsDocsDetailsByDddMasterAirwayBillNumEquals", "findDdpDmsDocsDetailsByDddMasterJobNumberEquals", "findDdpDmsDocsDetailsByDddNotifyPartyEquals", "findDdpDmsDocsDetailsByDddObjectNameEquals", "findDdpDmsDocsDetailsByDddRObjectIdEquals", "findDdpDmsDocsDetailsByDddShipperEquals", "findDdpDmsDocsDetailsByDddUserIdEquals", "findDdpDmsDocsDetailsByDddUserReferenceEquals" })
public class DdpDmsDocsDetail implements RowMapper<DdpDmsDocsDetail> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "DDD_ID", insertable = false)
    private Integer dddId;

    public Integer getDddId() {
        return this.dddId;
    }

    public void setDddId(Integer id) {
        this.dddId = id;
    }

    @Override
    public DdpDmsDocsDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
        DdpDmsDocsDetail ddpDmsDocsDetail = new DdpDmsDocsDetail();
        ddpDmsDocsDetail.setDddId(rs.getInt(1));
        ddpDmsDocsDetail.setDddDtxId(null); //no need to to add transaction object.
        ddpDmsDocsDetail.setDddRObjectId(rs.getString(3));
        ddpDmsDocsDetail.setDddControlDocType(rs.getString(4));
        ddpDmsDocsDetail.setDddConsignmentId(rs.getString(5));
        ddpDmsDocsDetail.setDddDocRef(rs.getString(6));
        ddpDmsDocsDetail.setDddGlobalDocRef(rs.getString(7));
        ddpDmsDocsDetail.setDddCarrierRef(rs.getString(8));
        ddpDmsDocsDetail.setDddCompanySource(rs.getString(9));
        ddpDmsDocsDetail.setDddCompanyDestination(rs.getString(10));
        ddpDmsDocsDetail.setDddBranchSource(rs.getString(11));
        ddpDmsDocsDetail.setDddBranchDestination(rs.getString(12));
        ddpDmsDocsDetail.setDddDeptSource(rs.getString(13));
        ddpDmsDocsDetail.setDddDeptDestination(rs.getString(14));
        ddpDmsDocsDetail.setDddBillOfLadingNumber(rs.getString(15));
        ddpDmsDocsDetail.setDddMasterAirwayBillNum(rs.getString(16));
        ddpDmsDocsDetail.setDddHouseAirwayBillNum(rs.getString(17));
        ddpDmsDocsDetail.setDddMasterJobNumber(rs.getString(18));
        ddpDmsDocsDetail.setDddClientId(rs.getString(19));
        ddpDmsDocsDetail.setDddShipper(rs.getString(20));
        ddpDmsDocsDetail.setDddConsignee(rs.getString(21));
        ddpDmsDocsDetail.setDddNotifyParty(rs.getString(22));
        ddpDmsDocsDetail.setDddDebitsForward(rs.getString(23));
        ddpDmsDocsDetail.setDddDebitsBack(rs.getString(24));
        ddpDmsDocsDetail.setDddInitialAgent(rs.getString(25));
        ddpDmsDocsDetail.setDddIntermediateAgent(rs.getString(26));
        ddpDmsDocsDetail.setDddFinalAgentId(rs.getString(27));
        ddpDmsDocsDetail.setDddCustomsEntryNo(rs.getString(28));
        ddpDmsDocsDetail.setDddIsRated(rs.getInt(29));
        ddpDmsDocsDetail.setDddBatchName(rs.getString(30));
        ddpDmsDocsDetail.setDddGeneratingSystem(rs.getString(31));
        ddpDmsDocsDetail.setDddUserId(rs.getString(32));
        ddpDmsDocsDetail.setDddUserReference(rs.getString(33));
        ddpDmsDocsDetail.setDddNote(rs.getString(34));
        ddpDmsDocsDetail.setDddFileType(rs.getString(35));
        ddpDmsDocsDetail.setDddContentSize(rs.getString(36));
        ddpDmsDocsDetail.setDddContentType(rs.getString(37));
        ddpDmsDocsDetail.setDddObjectName(rs.getString(38));
        ddpDmsDocsDetail.setDddJobNumber(rs.getString(39));
        return ddpDmsDocsDetail;
    }
}
