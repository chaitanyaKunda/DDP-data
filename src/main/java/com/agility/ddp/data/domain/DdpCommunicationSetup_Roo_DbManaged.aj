// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpAedRule;
import com.agility.ddp.data.domain.DdpCommunicationSetup;
import com.agility.ddp.data.domain.DdpExportRule;
import com.agility.ddp.data.domain.DdpMultiAedRule;
import com.agility.ddp.data.domain.DdpRuleDetail;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpCommunicationSetup_Roo_DbManaged {
    
    @OneToMany(mappedBy = "aedCommunicationId")
    private Set<DdpAedRule> DdpCommunicationSetup.ddpAedRules;
    
    @OneToMany(mappedBy = "expCommunicationId")
    private Set<DdpExportRule> DdpCommunicationSetup.ddpExportRules;
    
    @OneToMany(mappedBy = "maedCommunicationId")
    private Set<DdpMultiAedRule> DdpCommunicationSetup.ddpMultiAedRules;
    
    @OneToMany(mappedBy = "mesCmsId")
    private Set<DdpMultiEmails> DdpCommunicationSetup.ddpMultiEmailss;
    
    @OneToMany(mappedBy = "rdtCommunicationId")
    private Set<DdpRuleDetail> DdpCommunicationSetup.ddpRuleDetails;
    
    @Column(name = "CMS_COMMUNICATION_PROTOCOL", length = 8)
    private String DdpCommunicationSetup.cmsCommunicationProtocol;
    
    @Column(name = "CMS_PROTOCOL_SETTINGS_ID", length = 12)
    private String DdpCommunicationSetup.cmsProtocolSettingsId;
    
    @Column(name = "CMS_STATUS")
    @NotNull
    private Integer DdpCommunicationSetup.cmsStatus;
    
    @Column(name = "CMS_CREATED_BY", length = 120)
    @NotNull
    private String DdpCommunicationSetup.cmsCreatedBy;
    
    @Column(name = "CMS_CREATED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpCommunicationSetup.cmsCreatedDate;
    
    @Column(name = "CMS_MODIFIED_BY", length = 120)
    @NotNull
    private String DdpCommunicationSetup.cmsModifiedBy;
    
    @Column(name = "CMS_MODIFIED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpCommunicationSetup.cmsModifiedDate;
    
    @Column(name = "CMS_COMMUNICATION_PROTOCOL2", length = 8)
    private String DdpCommunicationSetup.cmsCommunicationProtocol2;
    
    @Column(name = "CMS_PROTOCOL_SETTINGS_ID2", length = 12)
    private String DdpCommunicationSetup.cmsProtocolSettingsId2;
    
    @Column(name = "CMS_COMMUNICATION_PROTOCOL3", length = 8)
    private String DdpCommunicationSetup.cmsCommunicationProtocol3;
    
    @Column(name = "CMS_PROTOCOL_SETTINGS_ID3", length = 12)
    private String DdpCommunicationSetup.cmsProtocolSettingsId3;
    
    public Set<DdpAedRule> DdpCommunicationSetup.getDdpAedRules() {
        return ddpAedRules;
    }
    
    public void DdpCommunicationSetup.setDdpAedRules(Set<DdpAedRule> ddpAedRules) {
        this.ddpAedRules = ddpAedRules;
    }
    
    public Set<DdpExportRule> DdpCommunicationSetup.getDdpExportRules() {
        return ddpExportRules;
    }
    
    public void DdpCommunicationSetup.setDdpExportRules(Set<DdpExportRule> ddpExportRules) {
        this.ddpExportRules = ddpExportRules;
    }
    
    public Set<DdpMultiAedRule> DdpCommunicationSetup.getDdpMultiAedRules() {
        return ddpMultiAedRules;
    }
    
    public void DdpCommunicationSetup.setDdpMultiAedRules(Set<DdpMultiAedRule> ddpMultiAedRules) {
        this.ddpMultiAedRules = ddpMultiAedRules;
    }
    
    public Set<DdpRuleDetail> DdpCommunicationSetup.getDdpRuleDetails() {
        return ddpRuleDetails;
    }
    
    public void DdpCommunicationSetup.setDdpRuleDetails(Set<DdpRuleDetail> ddpRuleDetails) {
        this.ddpRuleDetails = ddpRuleDetails;
    }
    
    public String DdpCommunicationSetup.getCmsCommunicationProtocol() {
        return cmsCommunicationProtocol;
    }
    
    public void DdpCommunicationSetup.setCmsCommunicationProtocol(String cmsCommunicationProtocol) {
        this.cmsCommunicationProtocol = cmsCommunicationProtocol;
    }
    
    public String DdpCommunicationSetup.getCmsProtocolSettingsId() {
        return cmsProtocolSettingsId;
    }
    
    public void DdpCommunicationSetup.setCmsProtocolSettingsId(String cmsProtocolSettingsId) {
        this.cmsProtocolSettingsId = cmsProtocolSettingsId;
    }
    
    public Integer DdpCommunicationSetup.getCmsStatus() {
        return cmsStatus;
    }
    
    public void DdpCommunicationSetup.setCmsStatus(Integer cmsStatus) {
        this.cmsStatus = cmsStatus;
    }
    
    public String DdpCommunicationSetup.getCmsCreatedBy() {
        return cmsCreatedBy;
    }
    
    public void DdpCommunicationSetup.setCmsCreatedBy(String cmsCreatedBy) {
        this.cmsCreatedBy = cmsCreatedBy;
    }
    
    public Calendar DdpCommunicationSetup.getCmsCreatedDate() {
        return cmsCreatedDate;
    }
    
    public void DdpCommunicationSetup.setCmsCreatedDate(Calendar cmsCreatedDate) {
        this.cmsCreatedDate = cmsCreatedDate;
    }
    
    public String DdpCommunicationSetup.getCmsModifiedBy() {
        return cmsModifiedBy;
    }
    
    public void DdpCommunicationSetup.setCmsModifiedBy(String cmsModifiedBy) {
        this.cmsModifiedBy = cmsModifiedBy;
    }
    
    public Calendar DdpCommunicationSetup.getCmsModifiedDate() {
        return cmsModifiedDate;
    }
    
    public void DdpCommunicationSetup.setCmsModifiedDate(Calendar cmsModifiedDate) {
        this.cmsModifiedDate = cmsModifiedDate;
    }
    
    public String DdpCommunicationSetup.getCmsCommunicationProtocol2() {
        return cmsCommunicationProtocol2;
    }
    
    public void DdpCommunicationSetup.setCmsCommunicationProtocol2(String cmsCommunicationProtocol2) {
        this.cmsCommunicationProtocol2 = cmsCommunicationProtocol2;
    }
    
    public String DdpCommunicationSetup.getCmsProtocolSettingsId2() {
        return cmsProtocolSettingsId2;
    }
    
    public void DdpCommunicationSetup.setCmsProtocolSettingsId2(String cmsProtocolSettingsId2) {
        this.cmsProtocolSettingsId2 = cmsProtocolSettingsId2;
    }
    
    public String DdpCommunicationSetup.getCmsCommunicationProtocol3() {
        return cmsCommunicationProtocol3;
    }
    
    public void DdpCommunicationSetup.setCmsCommunicationProtocol3(String cmsCommunicationProtocol3) {
        this.cmsCommunicationProtocol3 = cmsCommunicationProtocol3;
    }
    
    public String DdpCommunicationSetup.getCmsProtocolSettingsId3() {
        return cmsProtocolSettingsId3;
    }
    
    public void DdpCommunicationSetup.setCmsProtocolSettingsId3(String cmsProtocolSettingsId3) {
        this.cmsProtocolSettingsId3 = cmsProtocolSettingsId3;
    }
    
}
