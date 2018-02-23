// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGroup;
import com.agility.ddp.data.domain.DdpGroupSetup;
import com.agility.ddp.data.domain.DdpRoleSetup;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpGroup_Roo_DbManaged {
    
    @OneToMany(mappedBy = "grsGroupId")
    private Set<DdpGroupSetup> DdpGroup.ddpGroupSetups;
    
    @OneToMany(mappedBy = "rlsParentGrpId")
    private Set<DdpRoleSetup> DdpGroup.ddpRoleSetups;
    
    @Column(name = "GRP_NAME", length = 32)
    @NotNull
    private String DdpGroup.grpName;
    
    @Column(name = "GRP_DISPLAY_NAME", length = 128)
    @NotNull
    private String DdpGroup.grpDisplayName;
    
    @Column(name = "GRP_DESCRIPTION", length = 256)
    private String DdpGroup.grpDescription;
    
    @Column(name = "GRP_STATUS")
    @NotNull
    private Integer DdpGroup.grpStatus;
    
    @Column(name = "GRP_CREATED_BY", length = 120)
    @NotNull
    private String DdpGroup.grpCreatedBy;
    
    @Column(name = "GRP_CREATED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpGroup.grpCreatedDate;
    
    @Column(name = "GRP_MODIFIED_BY", length = 120)
    @NotNull
    private String DdpGroup.grpModifiedBy;
    
    @Column(name = "GRP_MODIFIED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpGroup.grpModifiedDate;
    
    public Set<DdpGroupSetup> DdpGroup.getDdpGroupSetups() {
        return ddpGroupSetups;
    }
    
    public void DdpGroup.setDdpGroupSetups(Set<DdpGroupSetup> ddpGroupSetups) {
        this.ddpGroupSetups = ddpGroupSetups;
    }
    
    public Set<DdpRoleSetup> DdpGroup.getDdpRoleSetups() {
        return ddpRoleSetups;
    }
    
    public void DdpGroup.setDdpRoleSetups(Set<DdpRoleSetup> ddpRoleSetups) {
        this.ddpRoleSetups = ddpRoleSetups;
    }
    
    public String DdpGroup.getGrpName() {
        return grpName;
    }
    
    public void DdpGroup.setGrpName(String grpName) {
        this.grpName = grpName;
    }
    
    public String DdpGroup.getGrpDisplayName() {
        return grpDisplayName;
    }
    
    public void DdpGroup.setGrpDisplayName(String grpDisplayName) {
        this.grpDisplayName = grpDisplayName;
    }
    
    public String DdpGroup.getGrpDescription() {
        return grpDescription;
    }
    
    public void DdpGroup.setGrpDescription(String grpDescription) {
        this.grpDescription = grpDescription;
    }
    
    public Integer DdpGroup.getGrpStatus() {
        return grpStatus;
    }
    
    public void DdpGroup.setGrpStatus(Integer grpStatus) {
        this.grpStatus = grpStatus;
    }
    
    public String DdpGroup.getGrpCreatedBy() {
        return grpCreatedBy;
    }
    
    public void DdpGroup.setGrpCreatedBy(String grpCreatedBy) {
        this.grpCreatedBy = grpCreatedBy;
    }
    
    public Calendar DdpGroup.getGrpCreatedDate() {
        return grpCreatedDate;
    }
    
    public void DdpGroup.setGrpCreatedDate(Calendar grpCreatedDate) {
        this.grpCreatedDate = grpCreatedDate;
    }
    
    public String DdpGroup.getGrpModifiedBy() {
        return grpModifiedBy;
    }
    
    public void DdpGroup.setGrpModifiedBy(String grpModifiedBy) {
        this.grpModifiedBy = grpModifiedBy;
    }
    
    public Calendar DdpGroup.getGrpModifiedDate() {
        return grpModifiedDate;
    }
    
    public void DdpGroup.setGrpModifiedDate(Calendar grpModifiedDate) {
        this.grpModifiedDate = grpModifiedDate;
    }
    
}
