// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpPmService;
import com.agility.ddp.data.domain.DdpRulePmSvc;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DdpPmService_Roo_DbManaged {
    
    @OneToMany(mappedBy = "rpsPsrId")
    private Set<DdpRulePmSvc> DdpPmService.ddpRulePmSvcs;
    
    @Column(name = "PSR_NAME", length = 120)
    @NotNull
    private String DdpPmService.psrName;
    
    @Column(name = "PSR_DESCRIPTION", length = 250)
    private String DdpPmService.psrDescription;
    
    @Column(name = "PSR_STATUS")
    @NotNull
    private Integer DdpPmService.psrStatus;
    
    public Set<DdpRulePmSvc> DdpPmService.getDdpRulePmSvcs() {
        return ddpRulePmSvcs;
    }
    
    public void DdpPmService.setDdpRulePmSvcs(Set<DdpRulePmSvc> ddpRulePmSvcs) {
        this.ddpRulePmSvcs = ddpRulePmSvcs;
    }
    
    public String DdpPmService.getPsrName() {
        return psrName;
    }
    
    public void DdpPmService.setPsrName(String psrName) {
        this.psrName = psrName;
    }
    
    public String DdpPmService.getPsrDescription() {
        return psrDescription;
    }
    
    public void DdpPmService.setPsrDescription(String psrDescription) {
        this.psrDescription = psrDescription;
    }
    
    public Integer DdpPmService.getPsrStatus() {
        return psrStatus;
    }
    
    public void DdpPmService.setPsrStatus(Integer psrStatus) {
        this.psrStatus = psrStatus;
    }
    
}
