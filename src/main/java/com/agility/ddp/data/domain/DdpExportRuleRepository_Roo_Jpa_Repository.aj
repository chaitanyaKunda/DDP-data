// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportRule;
import com.agility.ddp.data.domain.DdpExportRuleRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpExportRuleRepository_Roo_Jpa_Repository {
    
    declare parents: DdpExportRuleRepository extends JpaRepository<DdpExportRule, Integer>;
    
    declare parents: DdpExportRuleRepository extends JpaSpecificationExecutor<DdpExportRule>;
    
    declare @type: DdpExportRuleRepository: @Repository;
    
}
