// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportVersionLkp;
import com.agility.ddp.data.domain.DdpExportVersionLkpPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DdpExportVersionLkp_Roo_Jpa_Entity {
    
    declare @type: DdpExportVersionLkp: @Entity;
    
    declare @type: DdpExportVersionLkp: @Table(schema = "dbo", name = "DDP_EXPORT_VERSION_LKP");
    
    @EmbeddedId
    private DdpExportVersionLkpPK DdpExportVersionLkp.id;
    
    public DdpExportVersionLkpPK DdpExportVersionLkp.getId() {
        return this.id;
    }
    
    public void DdpExportVersionLkp.setId(DdpExportVersionLkpPK id) {
        this.id = id;
    }
    
}
