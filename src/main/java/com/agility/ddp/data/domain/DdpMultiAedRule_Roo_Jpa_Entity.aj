// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpMultiAedRule;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DdpMultiAedRule_Roo_Jpa_Entity {
    
    declare @type: DdpMultiAedRule: @Entity;
    
    declare @type: DdpMultiAedRule: @Table(schema = "dbo", name = "DDP_MULTI_AED_RULE");
    
    @Id
    @Column(name = "MAED_RULE_ID")
    private Integer DdpMultiAedRule.maedRuleId;
    
    public Integer DdpMultiAedRule.getMaedRuleId() {
        return this.maedRuleId;
    }
    
    public void DdpMultiAedRule.setMaedRuleId(Integer id) {
        this.maedRuleId = id;
    }
    
}