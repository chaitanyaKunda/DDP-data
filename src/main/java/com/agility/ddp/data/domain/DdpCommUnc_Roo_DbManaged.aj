// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommUnc;
import javax.persistence.Column;

privileged aspect DdpCommUnc_Roo_DbManaged {
    
    @Column(name = "CUN_UNC_PATH", length = 512)
    private String DdpCommUnc.cunUncPath;
    
    @Column(name = "CUN_UNC_USER_NAME", length = 120)
    private String DdpCommUnc.cunUncUserName;
    
    @Column(name = "CUN_UNC_PASSWORD", length = 120)
    private String DdpCommUnc.cunUncPassword;
    
    public String DdpCommUnc.getCunUncPath() {
        return cunUncPath;
    }
    
    public void DdpCommUnc.setCunUncPath(String cunUncPath) {
        this.cunUncPath = cunUncPath;
    }
    
    public String DdpCommUnc.getCunUncUserName() {
        return cunUncUserName;
    }
    
    public void DdpCommUnc.setCunUncUserName(String cunUncUserName) {
        this.cunUncUserName = cunUncUserName;
    }
    
    public String DdpCommUnc.getCunUncPassword() {
        return cunUncPassword;
    }
    
    public void DdpCommUnc.setCunUncPassword(String cunUncPassword) {
        this.cunUncPassword = cunUncPassword;
    }
    
}
