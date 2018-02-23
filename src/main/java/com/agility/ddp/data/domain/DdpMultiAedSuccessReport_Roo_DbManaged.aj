// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpMultiAedSuccessReport;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpMultiAedSuccessReport_Roo_DbManaged {
    
    @Column(name = "MAEDR_RULE_ID")
    @NotNull
    private Integer DdpMultiAedSuccessReport.maedrRuleId;
    
    @Column(name = "MAEDR_CAT_ID")
    private Integer DdpMultiAedSuccessReport.maedrCatId;
    
    @Column(name = "MAEDR_DOC_TYPE", length = 64)
    private String DdpMultiAedSuccessReport.maedrDocType;
    
    @Column(name = "MAEDR_R_OBJECT_ID", length = 64)
    private String DdpMultiAedSuccessReport.maedrRObjectId;
    
    @Column(name = "MAEDR_OBJECT_NAME", length = 128)
    private String DdpMultiAedSuccessReport.maedrObjectName;
    
    @Column(name = "MAEDR_JOB_NUMBER", length = 64)
    private String DdpMultiAedSuccessReport.maedrJobNumber;
    
    @Column(name = "MAEDR_CONSIGNMENT_ID", length = 64)
    private String DdpMultiAedSuccessReport.maedrConsignmentId;
    
    @Column(name = "MAEDR_DOC_REF", length = 128)
    private String DdpMultiAedSuccessReport.maedrDocRef;
    
    @Column(name = "MAEDR_MASTER_JOB_NUMBER", length = 64)
    private String DdpMultiAedSuccessReport.maedrMasterJobNumber;
    
    @Column(name = "MAEDR_FILE_SIZE")
    private Integer DdpMultiAedSuccessReport.maedrFileSize;
    
    @Column(name = "MAEDR_DMS_CREATED")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpMultiAedSuccessReport.maedrDmsCreated;
    
    @Column(name = "MAEDR_CONSOLIDATE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpMultiAedSuccessReport.maedrConsolidateDate;
    
    @Column(name = "MAEDR_CONSOLIDATE_TYPE", length = 64)
    private String DdpMultiAedSuccessReport.maedrConsolidateType;
    
    @Column(name = "MAEDR_SERVICE_TYPE", length = 64)
    private String DdpMultiAedSuccessReport.maedrServiceType;
    
    public Integer DdpMultiAedSuccessReport.getMaedrRuleId() {
        return maedrRuleId;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrRuleId(Integer maedrRuleId) {
        this.maedrRuleId = maedrRuleId;
    }
    
    public Integer DdpMultiAedSuccessReport.getMaedrCatId() {
        return maedrCatId;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrCatId(Integer maedrCatId) {
        this.maedrCatId = maedrCatId;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrDocType() {
        return maedrDocType;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrDocType(String maedrDocType) {
        this.maedrDocType = maedrDocType;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrRObjectId() {
        return maedrRObjectId;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrRObjectId(String maedrRObjectId) {
        this.maedrRObjectId = maedrRObjectId;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrObjectName() {
        return maedrObjectName;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrObjectName(String maedrObjectName) {
        this.maedrObjectName = maedrObjectName;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrJobNumber() {
        return maedrJobNumber;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrJobNumber(String maedrJobNumber) {
        this.maedrJobNumber = maedrJobNumber;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrConsignmentId() {
        return maedrConsignmentId;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrConsignmentId(String maedrConsignmentId) {
        this.maedrConsignmentId = maedrConsignmentId;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrDocRef() {
        return maedrDocRef;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrDocRef(String maedrDocRef) {
        this.maedrDocRef = maedrDocRef;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrMasterJobNumber() {
        return maedrMasterJobNumber;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrMasterJobNumber(String maedrMasterJobNumber) {
        this.maedrMasterJobNumber = maedrMasterJobNumber;
    }
    
    public Integer DdpMultiAedSuccessReport.getMaedrFileSize() {
        return maedrFileSize;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrFileSize(Integer maedrFileSize) {
        this.maedrFileSize = maedrFileSize;
    }
    
    public Calendar DdpMultiAedSuccessReport.getMaedrDmsCreated() {
        return maedrDmsCreated;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrDmsCreated(Calendar maedrDmsCreated) {
        this.maedrDmsCreated = maedrDmsCreated;
    }
    
    public Calendar DdpMultiAedSuccessReport.getMaedrConsolidateDate() {
        return maedrConsolidateDate;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrConsolidateDate(Calendar maedrConsolidateDate) {
        this.maedrConsolidateDate = maedrConsolidateDate;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrConsolidateType() {
        return maedrConsolidateType;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrConsolidateType(String maedrConsolidateType) {
        this.maedrConsolidateType = maedrConsolidateType;
    }
    
    public String DdpMultiAedSuccessReport.getMaedrServiceType() {
        return maedrServiceType;
    }
    
    public void DdpMultiAedSuccessReport.setMaedrServiceType(String maedrServiceType) {
        this.maedrServiceType = maedrServiceType;
    }
    
}