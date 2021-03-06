// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDmsDocsDetail;
import com.agility.ddp.data.domain.DdpDmsDocsTxn;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect DdpDmsDocsDetail_Roo_Finder {
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddBatchNameEquals(String dddBatchName) {
        if (dddBatchName == null || dddBatchName.length() == 0) throw new IllegalArgumentException("The dddBatchName argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddBatchName = :dddBatchName", DdpDmsDocsDetail.class);
        q.setParameter("dddBatchName", dddBatchName);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddBillOfLadingNumberEquals(String dddBillOfLadingNumber) {
        if (dddBillOfLadingNumber == null || dddBillOfLadingNumber.length() == 0) throw new IllegalArgumentException("The dddBillOfLadingNumber argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddBillOfLadingNumber = :dddBillOfLadingNumber", DdpDmsDocsDetail.class);
        q.setParameter("dddBillOfLadingNumber", dddBillOfLadingNumber);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddBranchDestinationEquals(String dddBranchDestination) {
        if (dddBranchDestination == null || dddBranchDestination.length() == 0) throw new IllegalArgumentException("The dddBranchDestination argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddBranchDestination = :dddBranchDestination", DdpDmsDocsDetail.class);
        q.setParameter("dddBranchDestination", dddBranchDestination);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddBranchSourceEquals(String dddBranchSource) {
        if (dddBranchSource == null || dddBranchSource.length() == 0) throw new IllegalArgumentException("The dddBranchSource argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddBranchSource = :dddBranchSource", DdpDmsDocsDetail.class);
        q.setParameter("dddBranchSource", dddBranchSource);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddCarrierRefEquals(String dddCarrierRef) {
        if (dddCarrierRef == null || dddCarrierRef.length() == 0) throw new IllegalArgumentException("The dddCarrierRef argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddCarrierRef = :dddCarrierRef", DdpDmsDocsDetail.class);
        q.setParameter("dddCarrierRef", dddCarrierRef);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddClientIdEquals(String dddClientId) {
        if (dddClientId == null || dddClientId.length() == 0) throw new IllegalArgumentException("The dddClientId argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddClientId = :dddClientId", DdpDmsDocsDetail.class);
        q.setParameter("dddClientId", dddClientId);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddCompanyDestinationEquals(String dddCompanyDestination) {
        if (dddCompanyDestination == null || dddCompanyDestination.length() == 0) throw new IllegalArgumentException("The dddCompanyDestination argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddCompanyDestination = :dddCompanyDestination", DdpDmsDocsDetail.class);
        q.setParameter("dddCompanyDestination", dddCompanyDestination);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddCompanySourceEquals(String dddCompanySource) {
        if (dddCompanySource == null || dddCompanySource.length() == 0) throw new IllegalArgumentException("The dddCompanySource argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddCompanySource = :dddCompanySource", DdpDmsDocsDetail.class);
        q.setParameter("dddCompanySource", dddCompanySource);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddConsigneeEquals(String dddConsignee) {
        if (dddConsignee == null || dddConsignee.length() == 0) throw new IllegalArgumentException("The dddConsignee argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddConsignee = :dddConsignee", DdpDmsDocsDetail.class);
        q.setParameter("dddConsignee", dddConsignee);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddConsignmentIdEquals(String dddConsignmentId) {
        if (dddConsignmentId == null || dddConsignmentId.length() == 0) throw new IllegalArgumentException("The dddConsignmentId argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddConsignmentId = :dddConsignmentId", DdpDmsDocsDetail.class);
        q.setParameter("dddConsignmentId", dddConsignmentId);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddContentSizeEquals(String dddContentSize) {
        if (dddContentSize == null || dddContentSize.length() == 0) throw new IllegalArgumentException("The dddContentSize argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddContentSize = :dddContentSize", DdpDmsDocsDetail.class);
        q.setParameter("dddContentSize", dddContentSize);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddContentTypeEquals(String dddContentType) {
        if (dddContentType == null || dddContentType.length() == 0) throw new IllegalArgumentException("The dddContentType argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddContentType = :dddContentType", DdpDmsDocsDetail.class);
        q.setParameter("dddContentType", dddContentType);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddControlDocTypeEquals(String dddControlDocType) {
        if (dddControlDocType == null || dddControlDocType.length() == 0) throw new IllegalArgumentException("The dddControlDocType argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddControlDocType = :dddControlDocType", DdpDmsDocsDetail.class);
        q.setParameter("dddControlDocType", dddControlDocType);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddControlDocTypeIsNotNull() {
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddControlDocType IS NOT NULL", DdpDmsDocsDetail.class);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddControlDocTypeIsNull() {
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddControlDocType IS NULL", DdpDmsDocsDetail.class);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddControlDocTypeLike(String dddControlDocType) {
        if (dddControlDocType == null || dddControlDocType.length() == 0) throw new IllegalArgumentException("The dddControlDocType argument is required");
        dddControlDocType = dddControlDocType.replace('*', '%');
        if (dddControlDocType.charAt(0) != '%') {
            dddControlDocType = "%" + dddControlDocType;
        }
        if (dddControlDocType.charAt(dddControlDocType.length() - 1) != '%') {
            dddControlDocType = dddControlDocType + "%";
        }
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE LOWER(o.dddControlDocType) LIKE LOWER(:dddControlDocType)", DdpDmsDocsDetail.class);
        q.setParameter("dddControlDocType", dddControlDocType);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddControlDocTypeNotEquals(String dddControlDocType) {
        if (dddControlDocType == null || dddControlDocType.length() == 0) throw new IllegalArgumentException("The dddControlDocType argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddControlDocType != :dddControlDocType", DdpDmsDocsDetail.class);
        q.setParameter("dddControlDocType", dddControlDocType);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddCustomsEntryNoEquals(String dddCustomsEntryNo) {
        if (dddCustomsEntryNo == null || dddCustomsEntryNo.length() == 0) throw new IllegalArgumentException("The dddCustomsEntryNo argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddCustomsEntryNo = :dddCustomsEntryNo", DdpDmsDocsDetail.class);
        q.setParameter("dddCustomsEntryNo", dddCustomsEntryNo);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddDebitsBackEquals(String dddDebitsBack) {
        if (dddDebitsBack == null || dddDebitsBack.length() == 0) throw new IllegalArgumentException("The dddDebitsBack argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddDebitsBack = :dddDebitsBack", DdpDmsDocsDetail.class);
        q.setParameter("dddDebitsBack", dddDebitsBack);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddDebitsForwardEquals(String dddDebitsForward) {
        if (dddDebitsForward == null || dddDebitsForward.length() == 0) throw new IllegalArgumentException("The dddDebitsForward argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddDebitsForward = :dddDebitsForward", DdpDmsDocsDetail.class);
        q.setParameter("dddDebitsForward", dddDebitsForward);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddDeptDestinationEquals(String dddDeptDestination) {
        if (dddDeptDestination == null || dddDeptDestination.length() == 0) throw new IllegalArgumentException("The dddDeptDestination argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddDeptDestination = :dddDeptDestination", DdpDmsDocsDetail.class);
        q.setParameter("dddDeptDestination", dddDeptDestination);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddDeptSourceEquals(String dddDeptSource) {
        if (dddDeptSource == null || dddDeptSource.length() == 0) throw new IllegalArgumentException("The dddDeptSource argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddDeptSource = :dddDeptSource", DdpDmsDocsDetail.class);
        q.setParameter("dddDeptSource", dddDeptSource);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddDocRefEquals(String dddDocRef) {
        if (dddDocRef == null || dddDocRef.length() == 0) throw new IllegalArgumentException("The dddDocRef argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddDocRef = :dddDocRef", DdpDmsDocsDetail.class);
        q.setParameter("dddDocRef", dddDocRef);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddDtxId(DdpDmsDocsTxn dddDtxId) {
        if (dddDtxId == null) throw new IllegalArgumentException("The dddDtxId argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddDtxId = :dddDtxId", DdpDmsDocsDetail.class);
        q.setParameter("dddDtxId", dddDtxId);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddFileTypeEquals(String dddFileType) {
        if (dddFileType == null || dddFileType.length() == 0) throw new IllegalArgumentException("The dddFileType argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddFileType = :dddFileType", DdpDmsDocsDetail.class);
        q.setParameter("dddFileType", dddFileType);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddFinalAgentIdEquals(String dddFinalAgentId) {
        if (dddFinalAgentId == null || dddFinalAgentId.length() == 0) throw new IllegalArgumentException("The dddFinalAgentId argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddFinalAgentId = :dddFinalAgentId", DdpDmsDocsDetail.class);
        q.setParameter("dddFinalAgentId", dddFinalAgentId);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddGeneratingSystemEquals(String dddGeneratingSystem) {
        if (dddGeneratingSystem == null || dddGeneratingSystem.length() == 0) throw new IllegalArgumentException("The dddGeneratingSystem argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddGeneratingSystem = :dddGeneratingSystem", DdpDmsDocsDetail.class);
        q.setParameter("dddGeneratingSystem", dddGeneratingSystem);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddGlobalDocRefEquals(String dddGlobalDocRef) {
        if (dddGlobalDocRef == null || dddGlobalDocRef.length() == 0) throw new IllegalArgumentException("The dddGlobalDocRef argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddGlobalDocRef = :dddGlobalDocRef", DdpDmsDocsDetail.class);
        q.setParameter("dddGlobalDocRef", dddGlobalDocRef);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddHouseAirwayBillNumEquals(String dddHouseAirwayBillNum) {
        if (dddHouseAirwayBillNum == null || dddHouseAirwayBillNum.length() == 0) throw new IllegalArgumentException("The dddHouseAirwayBillNum argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddHouseAirwayBillNum = :dddHouseAirwayBillNum", DdpDmsDocsDetail.class);
        q.setParameter("dddHouseAirwayBillNum", dddHouseAirwayBillNum);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddInitialAgentEquals(String dddInitialAgent) {
        if (dddInitialAgent == null || dddInitialAgent.length() == 0) throw new IllegalArgumentException("The dddInitialAgent argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddInitialAgent = :dddInitialAgent", DdpDmsDocsDetail.class);
        q.setParameter("dddInitialAgent", dddInitialAgent);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddIntermediateAgentEquals(String dddIntermediateAgent) {
        if (dddIntermediateAgent == null || dddIntermediateAgent.length() == 0) throw new IllegalArgumentException("The dddIntermediateAgent argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddIntermediateAgent = :dddIntermediateAgent", DdpDmsDocsDetail.class);
        q.setParameter("dddIntermediateAgent", dddIntermediateAgent);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddIsRatedEquals(Integer dddIsRated) {
        if (dddIsRated == null) throw new IllegalArgumentException("The dddIsRated argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddIsRated = :dddIsRated", DdpDmsDocsDetail.class);
        q.setParameter("dddIsRated", dddIsRated);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddJobNumberEquals(String dddJobNumber) {
        if (dddJobNumber == null || dddJobNumber.length() == 0) throw new IllegalArgumentException("The dddJobNumber argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddJobNumber = :dddJobNumber", DdpDmsDocsDetail.class);
        q.setParameter("dddJobNumber", dddJobNumber);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddMasterAirwayBillNumEquals(String dddMasterAirwayBillNum) {
        if (dddMasterAirwayBillNum == null || dddMasterAirwayBillNum.length() == 0) throw new IllegalArgumentException("The dddMasterAirwayBillNum argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddMasterAirwayBillNum = :dddMasterAirwayBillNum", DdpDmsDocsDetail.class);
        q.setParameter("dddMasterAirwayBillNum", dddMasterAirwayBillNum);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddMasterJobNumberEquals(String dddMasterJobNumber) {
        if (dddMasterJobNumber == null || dddMasterJobNumber.length() == 0) throw new IllegalArgumentException("The dddMasterJobNumber argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddMasterJobNumber = :dddMasterJobNumber", DdpDmsDocsDetail.class);
        q.setParameter("dddMasterJobNumber", dddMasterJobNumber);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddNotifyPartyEquals(String dddNotifyParty) {
        if (dddNotifyParty == null || dddNotifyParty.length() == 0) throw new IllegalArgumentException("The dddNotifyParty argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddNotifyParty = :dddNotifyParty", DdpDmsDocsDetail.class);
        q.setParameter("dddNotifyParty", dddNotifyParty);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddObjectNameEquals(String dddObjectName) {
        if (dddObjectName == null || dddObjectName.length() == 0) throw new IllegalArgumentException("The dddObjectName argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddObjectName = :dddObjectName", DdpDmsDocsDetail.class);
        q.setParameter("dddObjectName", dddObjectName);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddRObjectIdEquals(String dddRObjectId) {
        if (dddRObjectId == null || dddRObjectId.length() == 0) throw new IllegalArgumentException("The dddRObjectId argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddRObjectId = :dddRObjectId", DdpDmsDocsDetail.class);
        q.setParameter("dddRObjectId", dddRObjectId);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddShipperEquals(String dddShipper) {
        if (dddShipper == null || dddShipper.length() == 0) throw new IllegalArgumentException("The dddShipper argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddShipper = :dddShipper", DdpDmsDocsDetail.class);
        q.setParameter("dddShipper", dddShipper);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddUserIdEquals(String dddUserId) {
        if (dddUserId == null || dddUserId.length() == 0) throw new IllegalArgumentException("The dddUserId argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddUserId = :dddUserId", DdpDmsDocsDetail.class);
        q.setParameter("dddUserId", dddUserId);
        return q;
    }
    
    public static TypedQuery<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailsByDddUserReferenceEquals(String dddUserReference) {
        if (dddUserReference == null || dddUserReference.length() == 0) throw new IllegalArgumentException("The dddUserReference argument is required");
        EntityManager em = DdpDmsDocsDetail.entityManager();
        TypedQuery<DdpDmsDocsDetail> q = em.createQuery("SELECT o FROM DdpDmsDocsDetail AS o WHERE o.dddUserReference = :dddUserReference", DdpDmsDocsDetail.class);
        q.setParameter("dddUserReference", dddUserReference);
        return q;
    }
    
}
