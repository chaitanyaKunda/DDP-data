// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGenSourceLkp;
import com.agility.ddp.data.domain.DdpGenSourceLkpPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DdpGenSourceLkp_Roo_Jpa_Entity {
    
    declare @type: DdpGenSourceLkp: @Entity;
    
    declare @type: DdpGenSourceLkp: @Table(schema = "dbo", name = "DDP_GEN_SOURCE_LKP");
    
    @EmbeddedId
    private DdpGenSourceLkpPK DdpGenSourceLkp.id;
    
    public DdpGenSourceLkpPK DdpGenSourceLkp.getId() {
        return this.id;
    }
    
    public void DdpGenSourceLkp.setId(DdpGenSourceLkpPK id) {
        this.id = id;
    }
    
}
