// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpBranch;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DdpBranch_Roo_Jpa_Entity {
    
    declare @type: DdpBranch: @Entity;
    
    declare @type: DdpBranch: @Table(schema = "dbo", name = "DDP_BRANCH");
    
    @Id
    @Column(name = "BRN_BRANCH_CODE", length = 3)
    private String DdpBranch.brnBranchCode;
    
    public String DdpBranch.getBrnBranchCode() {
        return this.brnBranchCode;
    }
    
    public void DdpBranch.setBrnBranchCode(String id) {
        this.brnBranchCode = id;
    }
    
}