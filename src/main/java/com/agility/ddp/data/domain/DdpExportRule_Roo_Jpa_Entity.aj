// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportRule;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DdpExportRule_Roo_Jpa_Entity {
    
    declare @type: DdpExportRule: @Entity;
    
    declare @type: DdpExportRule: @Table(schema = "dbo", name = "DDP_EXPORT_RULE");
    
    @Id
    @Column(name = "EXP_RULE_ID")
    private Integer DdpExportRule.expRuleId;
    
    public Integer DdpExportRule.getExpRuleId() {
        return this.expRuleId;
    }
    
    public void DdpExportRule.setExpRuleId(Integer id) {
        this.expRuleId = id;
    }
    
}