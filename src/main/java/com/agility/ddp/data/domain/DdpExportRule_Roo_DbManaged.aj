// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommunicationSetup;
import com.agility.ddp.data.domain.DdpCompressionSetup;
import com.agility.ddp.data.domain.DdpDocnameConv;
import com.agility.ddp.data.domain.DdpExportRule;
import com.agility.ddp.data.domain.DdpMergeSetup;
import com.agility.ddp.data.domain.DdpNotification;
import com.agility.ddp.data.domain.DdpRule;
import com.agility.ddp.data.domain.DdpScheduler;
import com.agility.ddp.data.domain.DdpSourceSystem;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpExportRule_Roo_DbManaged {
    
    @OneToOne
    @JoinColumn(name = "EXP_RULE_ID", nullable = false, insertable = false, updatable = false)
    private DdpRule DdpExportRule.ddpRule;
    
    @ManyToOne
    @JoinColumn(name = "EXP_COMMUNICATION_ID", referencedColumnName = "CMS_COMMUNICATION_ID")
    private DdpCommunicationSetup DdpExportRule.expCommunicationId;
    
    @ManyToOne
    @JoinColumn(name = "EXP_COMPRESSION_ID", referencedColumnName = "CTS_COMPRESSION_ID")
    private DdpCompressionSetup DdpExportRule.expCompressionId;
    
    @ManyToOne
    @JoinColumn(name = "EXP_DOCNAME_CONV_ID", referencedColumnName = "DCV_ID")
    private DdpDocnameConv DdpExportRule.expDocnameConvId;
    
    @ManyToOne
    @JoinColumn(name = "EXP_MERGE_ID", referencedColumnName = "MTS_MERGE_ID")
    private DdpMergeSetup DdpExportRule.expMergeId;
    
    @ManyToOne
    @JoinColumn(name = "EXP_NOTIFICATION_ID", referencedColumnName = "NOT_ID", nullable = false)
    private DdpNotification DdpExportRule.expNotificationId;
    
    @ManyToOne
    @JoinColumn(name = "EXP_SCHEDULER_ID", referencedColumnName = "SCH_ID")
    private DdpScheduler DdpExportRule.expSchedulerId;
    
    @ManyToOne
    @JoinColumn(name = "EXP_SOURCE_SYSTEM", referencedColumnName = "SOU_APPLICATION_CODE")
    private DdpSourceSystem DdpExportRule.expSourceSystem;
    
    @Column(name = "EXP_CORRUPTION_CHECK")
    @NotNull
    private Integer DdpExportRule.expCorruptionCheck;
    
    @Column(name = "EXP_VERSION")
    private Integer DdpExportRule.expVersion;
    
    @Column(name = "EXP_IS_PARTY_CHECK_REQUIRED")
    @NotNull
    private Integer DdpExportRule.expIsPartyCheckRequired;
    
    @Column(name = "EXP_PROP_FILE", length = 120)
    private String DdpExportRule.expPropFile;
    
    @Column(name = "EXP_PROP_TABLE", length = 45)
    private String DdpExportRule.expPropTable;
    
    @Column(name = "EXP_PROP_IN_USE", length = 45)
    private String DdpExportRule.expPropInUse;
    
    @Column(name = "EXP_STATUS")
    @NotNull
    private Integer DdpExportRule.expStatus;
    
    @Column(name = "EXP_CREATED_BY", length = 120)
    @NotNull
    private String DdpExportRule.expCreatedBy;
    
    @Column(name = "EXP_CREATED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpExportRule.expCreatedDate;
    
    @Column(name = "EXP_MODIFIED_BY", length = 120)
    @NotNull
    private String DdpExportRule.expModifiedBy;
    
    @Column(name = "EXP_MODIFIED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpExportRule.expModifiedDate;
    
    @Column(name = "EXP_ACTIVATION_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpExportRule.expActivationDate;
    
    public DdpRule DdpExportRule.getDdpRule() {
        return ddpRule;
    }
    
    public void DdpExportRule.setDdpRule(DdpRule ddpRule) {
        this.ddpRule = ddpRule;
    }
    
    public DdpCommunicationSetup DdpExportRule.getExpCommunicationId() {
        return expCommunicationId;
    }
    
    public void DdpExportRule.setExpCommunicationId(DdpCommunicationSetup expCommunicationId) {
        this.expCommunicationId = expCommunicationId;
    }
    
    public DdpCompressionSetup DdpExportRule.getExpCompressionId() {
        return expCompressionId;
    }
    
    public void DdpExportRule.setExpCompressionId(DdpCompressionSetup expCompressionId) {
        this.expCompressionId = expCompressionId;
    }
    
    public DdpDocnameConv DdpExportRule.getExpDocnameConvId() {
        return expDocnameConvId;
    }
    
    public void DdpExportRule.setExpDocnameConvId(DdpDocnameConv expDocnameConvId) {
        this.expDocnameConvId = expDocnameConvId;
    }
    
    public DdpMergeSetup DdpExportRule.getExpMergeId() {
        return expMergeId;
    }
    
    public void DdpExportRule.setExpMergeId(DdpMergeSetup expMergeId) {
        this.expMergeId = expMergeId;
    }
    
    public DdpNotification DdpExportRule.getExpNotificationId() {
        return expNotificationId;
    }
    
    public void DdpExportRule.setExpNotificationId(DdpNotification expNotificationId) {
        this.expNotificationId = expNotificationId;
    }
    
    public DdpScheduler DdpExportRule.getExpSchedulerId() {
        return expSchedulerId;
    }
    
    public void DdpExportRule.setExpSchedulerId(DdpScheduler expSchedulerId) {
        this.expSchedulerId = expSchedulerId;
    }
    
    public DdpSourceSystem DdpExportRule.getExpSourceSystem() {
        return expSourceSystem;
    }
    
    public void DdpExportRule.setExpSourceSystem(DdpSourceSystem expSourceSystem) {
        this.expSourceSystem = expSourceSystem;
    }
    
    public Integer DdpExportRule.getExpCorruptionCheck() {
        return expCorruptionCheck;
    }
    
    public void DdpExportRule.setExpCorruptionCheck(Integer expCorruptionCheck) {
        this.expCorruptionCheck = expCorruptionCheck;
    }
    
    public Integer DdpExportRule.getExpVersion() {
        return expVersion;
    }
    
    public void DdpExportRule.setExpVersion(Integer expVersion) {
        this.expVersion = expVersion;
    }
    
    public Integer DdpExportRule.getExpIsPartyCheckRequired() {
        return expIsPartyCheckRequired;
    }
    
    public void DdpExportRule.setExpIsPartyCheckRequired(Integer expIsPartyCheckRequired) {
        this.expIsPartyCheckRequired = expIsPartyCheckRequired;
    }
    
    public String DdpExportRule.getExpPropFile() {
        return expPropFile;
    }
    
    public void DdpExportRule.setExpPropFile(String expPropFile) {
        this.expPropFile = expPropFile;
    }
    
    public String DdpExportRule.getExpPropTable() {
        return expPropTable;
    }
    
    public void DdpExportRule.setExpPropTable(String expPropTable) {
        this.expPropTable = expPropTable;
    }
    
    public String DdpExportRule.getExpPropInUse() {
        return expPropInUse;
    }
    
    public void DdpExportRule.setExpPropInUse(String expPropInUse) {
        this.expPropInUse = expPropInUse;
    }
    
    public Integer DdpExportRule.getExpStatus() {
        return expStatus;
    }
    
    public void DdpExportRule.setExpStatus(Integer expStatus) {
        this.expStatus = expStatus;
    }
    
    public String DdpExportRule.getExpCreatedBy() {
        return expCreatedBy;
    }
    
    public void DdpExportRule.setExpCreatedBy(String expCreatedBy) {
        this.expCreatedBy = expCreatedBy;
    }
    
    public Calendar DdpExportRule.getExpCreatedDate() {
        return expCreatedDate;
    }
    
    public void DdpExportRule.setExpCreatedDate(Calendar expCreatedDate) {
        this.expCreatedDate = expCreatedDate;
    }
    
    public String DdpExportRule.getExpModifiedBy() {
        return expModifiedBy;
    }
    
    public void DdpExportRule.setExpModifiedBy(String expModifiedBy) {
        this.expModifiedBy = expModifiedBy;
    }
    
    public Calendar DdpExportRule.getExpModifiedDate() {
        return expModifiedDate;
    }
    
    public void DdpExportRule.setExpModifiedDate(Calendar expModifiedDate) {
        this.expModifiedDate = expModifiedDate;
    }
    
    public Calendar DdpExportRule.getExpActivationDate() {
        return expActivationDate;
    }
    
    public void DdpExportRule.setExpActivationDate(Calendar expActivationDate) {
        this.expActivationDate = expActivationDate;
    }
    
}
