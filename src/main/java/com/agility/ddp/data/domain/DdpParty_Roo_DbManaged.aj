// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpParty;
import com.agility.ddp.data.domain.DdpRuleDetail;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DdpParty_Roo_DbManaged {
    
    @OneToMany(mappedBy = "rdtPartyCode")
    private Set<DdpRuleDetail> DdpParty.ddpRuleDetails;
    
    @Column(name = "PTY_PARTY_NAME", length = 32)
    @NotNull
    private String DdpParty.ptyPartyName;
    
    @Column(name = "PTY_COMPANY_CODE", length = 3)
    @NotNull
    private String DdpParty.ptyCompanyCode;
    
    @Column(name = "PTY_APPLICATION_CODE", length = 16)
    @NotNull
    private String DdpParty.ptyApplicationCode;
    
    @Column(name = "PTY_STATUS")
    @NotNull
    private Integer DdpParty.ptyStatus;
    
    @Column(name = "PTY_CREATED_BY", length = 120)
    @NotNull
    private String DdpParty.ptyCreatedBy;
    
    @Column(name = "PTY_CREATED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpParty.ptyCreatedDate;
    
    @Column(name = "PTY_MODIFIED_BY", length = 120)
    @NotNull
    private String DdpParty.ptyModifiedBy;
    
    @Column(name = "PTY_MODIFIED_DATE")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DdpParty.ptyModifiedDate;
    
    public Set<DdpRuleDetail> DdpParty.getDdpRuleDetails() {
        return ddpRuleDetails;
    }
    
    public void DdpParty.setDdpRuleDetails(Set<DdpRuleDetail> ddpRuleDetails) {
        this.ddpRuleDetails = ddpRuleDetails;
    }
    
    public String DdpParty.getPtyPartyName() {
        return ptyPartyName;
    }
    
    public void DdpParty.setPtyPartyName(String ptyPartyName) {
        this.ptyPartyName = ptyPartyName;
    }
    
    public String DdpParty.getPtyCompanyCode() {
        return ptyCompanyCode;
    }
    
    public void DdpParty.setPtyCompanyCode(String ptyCompanyCode) {
        this.ptyCompanyCode = ptyCompanyCode;
    }
    
    public String DdpParty.getPtyApplicationCode() {
        return ptyApplicationCode;
    }
    
    public void DdpParty.setPtyApplicationCode(String ptyApplicationCode) {
        this.ptyApplicationCode = ptyApplicationCode;
    }
    
    public Integer DdpParty.getPtyStatus() {
        return ptyStatus;
    }
    
    public void DdpParty.setPtyStatus(Integer ptyStatus) {
        this.ptyStatus = ptyStatus;
    }
    
    public String DdpParty.getPtyCreatedBy() {
        return ptyCreatedBy;
    }
    
    public void DdpParty.setPtyCreatedBy(String ptyCreatedBy) {
        this.ptyCreatedBy = ptyCreatedBy;
    }
    
    public Calendar DdpParty.getPtyCreatedDate() {
        return ptyCreatedDate;
    }
    
    public void DdpParty.setPtyCreatedDate(Calendar ptyCreatedDate) {
        this.ptyCreatedDate = ptyCreatedDate;
    }
    
    public String DdpParty.getPtyModifiedBy() {
        return ptyModifiedBy;
    }
    
    public void DdpParty.setPtyModifiedBy(String ptyModifiedBy) {
        this.ptyModifiedBy = ptyModifiedBy;
    }
    
    public Calendar DdpParty.getPtyModifiedDate() {
        return ptyModifiedDate;
    }
    
    public void DdpParty.setPtyModifiedDate(Calendar ptyModifiedDate) {
        this.ptyModifiedDate = ptyModifiedDate;
    }
    
}
