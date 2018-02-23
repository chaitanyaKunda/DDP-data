// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRate;
import com.agility.ddp.data.domain.DdpRuleDetail;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect DdpRate_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "RTS_RDT_ID", referencedColumnName = "RDT_ID", nullable = false)
    private DdpRuleDetail DdpRate.rtsRdtId;
    
    @Column(name = "RTS_OPTION", length = 16)
    private String DdpRate.rtsOption;
    
    @Column(name = "RTS_CREATED_BY", length = 120)
    @NotNull
    private String DdpRate.rtsCreatedBy;
    
    @Column(name = "RTS_CREATED_DATE", length = 120)
    @NotNull
    private String DdpRate.rtsCreatedDate;
    
    @Column(name = "RTS_MODIFIED_BY", length = 120)
    @NotNull
    private String DdpRate.rtsModifiedBy;
    
    @Column(name = "RTS_MODIFIED_DATE", length = 120)
    @NotNull
    private String DdpRate.rtsModifiedDate;
    
    public DdpRuleDetail DdpRate.getRtsRdtId() {
        return rtsRdtId;
    }
    
    public void DdpRate.setRtsRdtId(DdpRuleDetail rtsRdtId) {
        this.rtsRdtId = rtsRdtId;
    }
    
    public String DdpRate.getRtsOption() {
        return rtsOption;
    }
    
    public void DdpRate.setRtsOption(String rtsOption) {
        this.rtsOption = rtsOption;
    }
    
    public String DdpRate.getRtsCreatedBy() {
        return rtsCreatedBy;
    }
    
    public void DdpRate.setRtsCreatedBy(String rtsCreatedBy) {
        this.rtsCreatedBy = rtsCreatedBy;
    }
    
    public String DdpRate.getRtsCreatedDate() {
        return rtsCreatedDate;
    }
    
    public void DdpRate.setRtsCreatedDate(String rtsCreatedDate) {
        this.rtsCreatedDate = rtsCreatedDate;
    }
    
    public String DdpRate.getRtsModifiedBy() {
        return rtsModifiedBy;
    }
    
    public void DdpRate.setRtsModifiedBy(String rtsModifiedBy) {
        this.rtsModifiedBy = rtsModifiedBy;
    }
    
    public String DdpRate.getRtsModifiedDate() {
        return rtsModifiedDate;
    }
    
    public void DdpRate.setRtsModifiedDate(String rtsModifiedDate) {
        this.rtsModifiedDate = rtsModifiedDate;
    }
    
}