// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpScheduler;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DdpScheduler_Roo_Jpa_Entity {
    
    declare @type: DdpScheduler: @Entity;
    
    declare @type: DdpScheduler: @Table(schema = "dbo", name = "DDP_SCHEDULER");
    
}