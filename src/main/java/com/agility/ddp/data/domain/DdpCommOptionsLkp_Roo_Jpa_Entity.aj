// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommOptionsLkp;
import com.agility.ddp.data.domain.DdpCommOptionsLkpPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DdpCommOptionsLkp_Roo_Jpa_Entity {
    
    declare @type: DdpCommOptionsLkp: @Entity;
    
    declare @type: DdpCommOptionsLkp: @Table(schema = "dbo", name = "DDP_COMM_OPTIONS_LKP");
    
    @EmbeddedId
    private DdpCommOptionsLkpPK DdpCommOptionsLkp.id;
    
    public DdpCommOptionsLkpPK DdpCommOptionsLkp.getId() {
        return this.id;
    }
    
    public void DdpCommOptionsLkp.setId(DdpCommOptionsLkpPK id) {
        this.id = id;
    }
    
}
