// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DdpRate_Roo_Jpa_Entity {
    
    declare @type: DdpRate: @Entity;
    
    declare @type: DdpRate: @Table(schema = "dbo", name = "DDP_RATE");
    
    @Id
    @Column(name = "RTS_ID")
    private Integer DdpRate.rtsId;
    
    public Integer DdpRate.getRtsId() {
        return this.rtsId;
    }
    
    public void DdpRate.setRtsId(Integer id) {
        this.rtsId = id;
    }
    
}
