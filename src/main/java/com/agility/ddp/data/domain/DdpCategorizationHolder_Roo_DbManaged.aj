// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizationHolder;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

privileged aspect DdpCategorizationHolder_Roo_DbManaged {
    
    @Column(name = "CHL_SYN_ID")
    @NotNull
    private Integer DdpCategorizationHolder.chlSynId;
    
    @Column(name = "CHL_DTX_ID")
    @NotNull
    private Integer DdpCategorizationHolder.chlDtxId;
    
    @Column(name = "CHL_RUL_ID")
    @NotNull
    private Integer DdpCategorizationHolder.chlRulId;
    
    public Integer DdpCategorizationHolder.getChlSynId() {
        return chlSynId;
    }
    
    public void DdpCategorizationHolder.setChlSynId(Integer chlSynId) {
        this.chlSynId = chlSynId;
    }
    
    public Integer DdpCategorizationHolder.getChlDtxId() {
        return chlDtxId;
    }
    
    public void DdpCategorizationHolder.setChlDtxId(Integer chlDtxId) {
        this.chlDtxId = chlDtxId;
    }
    
    public Integer DdpCategorizationHolder.getChlRulId() {
        return chlRulId;
    }
    
    public void DdpCategorizationHolder.setChlRulId(Integer chlRulId) {
        this.chlRulId = chlRulId;
    }
    
}
