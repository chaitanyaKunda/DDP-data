// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DmsDdpSyn;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DmsDdpSyn_Roo_Jpa_Entity {
    
    declare @type: DmsDdpSyn: @Entity;
    
    declare @type: DmsDdpSyn: @Table(schema = "dbo", name = "DMS_DDP_SYN");
    
    @Id
    @Column(name = "SYN_ID")
    private Integer DmsDdpSyn.synId;
    
    public Integer DmsDdpSyn.getSynId() {
        return this.synId;
    }
    
    public void DmsDdpSyn.setSynId(Integer id) {
        this.synId = id;
    }
    
}
