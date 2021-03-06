// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpAedRule;
import com.agility.ddp.data.domain.DdpCompressionSetup;
import com.agility.ddp.data.domain.DdpExportRule;
import com.agility.ddp.data.domain.DdpMultiAedRule;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect DdpCompressionSetup_Roo_DbManaged {
    
    @OneToMany(mappedBy = "aedCompressionId")
    private Set<DdpAedRule> DdpCompressionSetup.ddpAedRules;
    
    @OneToMany(mappedBy = "expCompressionId")
    private Set<DdpExportRule> DdpCompressionSetup.ddpExportRules;
    
    @OneToMany(mappedBy = "maedCompressionId")
    private Set<DdpMultiAedRule> DdpCompressionSetup.ddpMultiAedRules;
    
    @Column(name = "CTS_COMPRESSION_LEVEL", length = 16)
    private String DdpCompressionSetup.ctsCompressionLevel;
    
    @Column(name = "CTS_COMPRESSION_SIZE")
    private Integer DdpCompressionSetup.ctsCompressionSize;
    
    @Column(name = "CTS_EMAIL_ATTACHMENT_LIMIT")
    private Integer DdpCompressionSetup.ctsEmailAttachmentLimit;
    
    @Column(name = "CTS_NO_OF_FILES_ATTACHED")
    private Integer DdpCompressionSetup.ctsNoOfFilesAttached;
    
    public Set<DdpAedRule> DdpCompressionSetup.getDdpAedRules() {
        return ddpAedRules;
    }
    
    public void DdpCompressionSetup.setDdpAedRules(Set<DdpAedRule> ddpAedRules) {
        this.ddpAedRules = ddpAedRules;
    }
    
    public Set<DdpExportRule> DdpCompressionSetup.getDdpExportRules() {
        return ddpExportRules;
    }
    
    public void DdpCompressionSetup.setDdpExportRules(Set<DdpExportRule> ddpExportRules) {
        this.ddpExportRules = ddpExportRules;
    }
    
    public Set<DdpMultiAedRule> DdpCompressionSetup.getDdpMultiAedRules() {
        return ddpMultiAedRules;
    }
    
    public void DdpCompressionSetup.setDdpMultiAedRules(Set<DdpMultiAedRule> ddpMultiAedRules) {
        this.ddpMultiAedRules = ddpMultiAedRules;
    }
    
    public String DdpCompressionSetup.getCtsCompressionLevel() {
        return ctsCompressionLevel;
    }
    
    public void DdpCompressionSetup.setCtsCompressionLevel(String ctsCompressionLevel) {
        this.ctsCompressionLevel = ctsCompressionLevel;
    }
    
    public Integer DdpCompressionSetup.getCtsCompressionSize() {
        return ctsCompressionSize;
    }
    
    public void DdpCompressionSetup.setCtsCompressionSize(Integer ctsCompressionSize) {
        this.ctsCompressionSize = ctsCompressionSize;
    }
    
    public Integer DdpCompressionSetup.getCtsEmailAttachmentLimit() {
        return ctsEmailAttachmentLimit;
    }
    
    public void DdpCompressionSetup.setCtsEmailAttachmentLimit(Integer ctsEmailAttachmentLimit) {
        this.ctsEmailAttachmentLimit = ctsEmailAttachmentLimit;
    }
    
    public Integer DdpCompressionSetup.getCtsNoOfFilesAttached() {
        return ctsNoOfFilesAttached;
    }
    
    public void DdpCompressionSetup.setCtsNoOfFilesAttached(Integer ctsNoOfFilesAttached) {
        this.ctsNoOfFilesAttached = ctsNoOfFilesAttached;
    }
    
}
