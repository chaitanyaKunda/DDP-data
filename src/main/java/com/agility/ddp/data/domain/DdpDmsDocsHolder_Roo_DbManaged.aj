// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDmsDocsHolder;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

privileged aspect DdpDmsDocsHolder_Roo_DbManaged {
    
    @Column(name = "THL_R_OBJECT_ID", length = 16)
    private String DdpDmsDocsHolder.thlRObjectId;
    
    @Column(name = "THL_IS_PROCESS_REQ", length = 6)
    @NotNull
    private String DdpDmsDocsHolder.thlIsProcessReq;
    
    @Column(name = "THL_TBO_NAME", length = 64)
    private String DdpDmsDocsHolder.thlTboName;
    
    public String DdpDmsDocsHolder.getThlRObjectId() {
        return thlRObjectId;
    }
    
    public void DdpDmsDocsHolder.setThlRObjectId(String thlRObjectId) {
        this.thlRObjectId = thlRObjectId;
    }
    
    public String DdpDmsDocsHolder.getThlIsProcessReq() {
        return thlIsProcessReq;
    }
    
    public void DdpDmsDocsHolder.setThlIsProcessReq(String thlIsProcessReq) {
        this.thlIsProcessReq = thlIsProcessReq;
    }
    
    public String DdpDmsDocsHolder.getThlTboName() {
        return thlTboName;
    }
    
    public void DdpDmsDocsHolder.setThlTboName(String thlTboName) {
        this.thlTboName = thlTboName;
    }
    
}
