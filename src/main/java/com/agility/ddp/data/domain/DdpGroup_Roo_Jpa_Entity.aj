// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGroup;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DdpGroup_Roo_Jpa_Entity {
    
    declare @type: DdpGroup: @Entity;
    
    declare @type: DdpGroup: @Table(schema = "dbo", name = "DDP_GROUP");
    
}
