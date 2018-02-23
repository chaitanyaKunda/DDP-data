// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGroup;
import com.agility.ddp.data.domain.DdpGroupSetup;
import com.agility.ddp.data.domain.DdpUser;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpGroupSetup_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "GRS_GROUP_ID", referencedColumnName = "GRP_ID", nullable = false)
    private DdpGroup DdpGroupSetup.grsGroupId;
    
    @ManyToOne
    @JoinColumn(name = "GRS_USER_ID", referencedColumnName = "USR_ID", nullable = false)
    private DdpUser DdpGroupSetup.grsUserId;
    
    @Column(name = "GRS_STATUS")
    @NotNull
    private Integer DdpGroupSetup.grsStatus;
    
    @Column(name = "GRS_CREATED_BY", length = 120)
    @NotNull
    private String DdpGroupSetup.grsCreatedBy;
    
    @Column(name = "GRS_CREATED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpGroupSetup.grsCreatedDate;
    
    @Column(name = "GRS_MODIFIED_BY", length = 120)
    @NotNull
    private String DdpGroupSetup.grsModifiedBy;
    
    @Column(name = "GRS_MODIFIED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpGroupSetup.grsModifiedDate;
    
    public DdpGroup DdpGroupSetup.getGrsGroupId() {
        return grsGroupId;
    }
    
    public void DdpGroupSetup.setGrsGroupId(DdpGroup grsGroupId) {
        this.grsGroupId = grsGroupId;
    }
    
    public DdpUser DdpGroupSetup.getGrsUserId() {
        return grsUserId;
    }
    
    public void DdpGroupSetup.setGrsUserId(DdpUser grsUserId) {
        this.grsUserId = grsUserId;
    }
    
    public Integer DdpGroupSetup.getGrsStatus() {
        return grsStatus;
    }
    
    public void DdpGroupSetup.setGrsStatus(Integer grsStatus) {
        this.grsStatus = grsStatus;
    }
    
    public String DdpGroupSetup.getGrsCreatedBy() {
        return grsCreatedBy;
    }
    
    public void DdpGroupSetup.setGrsCreatedBy(String grsCreatedBy) {
        this.grsCreatedBy = grsCreatedBy;
    }
    
    public Calendar DdpGroupSetup.getGrsCreatedDate() {
        return grsCreatedDate;
    }
    
    public void DdpGroupSetup.setGrsCreatedDate(Calendar grsCreatedDate) {
        this.grsCreatedDate = grsCreatedDate;
    }
    
    public String DdpGroupSetup.getGrsModifiedBy() {
        return grsModifiedBy;
    }
    
    public void DdpGroupSetup.setGrsModifiedBy(String grsModifiedBy) {
        this.grsModifiedBy = grsModifiedBy;
    }
    
    public Calendar DdpGroupSetup.getGrsModifiedDate() {
        return grsModifiedDate;
    }
    
    public void DdpGroupSetup.setGrsModifiedDate(Calendar grsModifiedDate) {
        this.grsModifiedDate = grsModifiedDate;
    }
    
}