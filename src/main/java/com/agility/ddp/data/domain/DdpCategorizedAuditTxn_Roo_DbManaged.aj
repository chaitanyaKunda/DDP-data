// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedAuditTxn;
import com.agility.ddp.data.domain.DdpCategorizedDocs;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpCategorizedAuditTxn_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "CAX_DCD_ID", referencedColumnName = "CAT_ID", nullable = false)
    private DdpCategorizedDocs DdpCategorizedAuditTxn.caxDcdId;
    
    @Column(name = "CAX_PM_SEQ")
    @NotNull
    private Integer DdpCategorizedAuditTxn.caxPmSeq;
    
    @Column(name = "CAX_PM_NAME", length = 120)
    @NotNull
    private String DdpCategorizedAuditTxn.caxPmName;
    
    @Column(name = "CAX_PM_LOGS", length = 250)
    private String DdpCategorizedAuditTxn.caxPmLogs;
    
    @Column(name = "CAX_PM_INITIATED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpCategorizedAuditTxn.caxPmInitiatedDate;
    
    public DdpCategorizedDocs DdpCategorizedAuditTxn.getCaxDcdId() {
        return caxDcdId;
    }
    
    public void DdpCategorizedAuditTxn.setCaxDcdId(DdpCategorizedDocs caxDcdId) {
        this.caxDcdId = caxDcdId;
    }
    
    public Integer DdpCategorizedAuditTxn.getCaxPmSeq() {
        return caxPmSeq;
    }
    
    public void DdpCategorizedAuditTxn.setCaxPmSeq(Integer caxPmSeq) {
        this.caxPmSeq = caxPmSeq;
    }
    
    public String DdpCategorizedAuditTxn.getCaxPmName() {
        return caxPmName;
    }
    
    public void DdpCategorizedAuditTxn.setCaxPmName(String caxPmName) {
        this.caxPmName = caxPmName;
    }
    
    public String DdpCategorizedAuditTxn.getCaxPmLogs() {
        return caxPmLogs;
    }
    
    public void DdpCategorizedAuditTxn.setCaxPmLogs(String caxPmLogs) {
        this.caxPmLogs = caxPmLogs;
    }
    
    public Calendar DdpCategorizedAuditTxn.getCaxPmInitiatedDate() {
        return caxPmInitiatedDate;
    }
    
    public void DdpCategorizedAuditTxn.setCaxPmInitiatedDate(Calendar caxPmInitiatedDate) {
        this.caxPmInitiatedDate = caxPmInitiatedDate;
    }
    
}
