// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportRule;
import com.agility.ddp.data.domain.DdpExportRuleRepository;
import com.agility.ddp.data.domain.DdpExportRuleServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpExportRuleServiceImpl_Roo_Service {
    
    declare @type: DdpExportRuleServiceImpl: @Service;
    
    declare @type: DdpExportRuleServiceImpl: @Transactional;
    
    @Autowired
    DdpExportRuleRepository DdpExportRuleServiceImpl.ddpExportRuleRepository;
    
    public long DdpExportRuleServiceImpl.countAllDdpExportRules() {
        return ddpExportRuleRepository.count();
    }
    
    public void DdpExportRuleServiceImpl.deleteDdpExportRule(DdpExportRule ddpExportRule) {
        ddpExportRuleRepository.delete(ddpExportRule);
    }
    
    public DdpExportRule DdpExportRuleServiceImpl.findDdpExportRule(Integer id) {
        return ddpExportRuleRepository.findOne(id);
    }
    
    public List<DdpExportRule> DdpExportRuleServiceImpl.findAllDdpExportRules() {
        return ddpExportRuleRepository.findAll();
    }
    
    public List<DdpExportRule> DdpExportRuleServiceImpl.findDdpExportRuleEntries(int firstResult, int maxResults) {
        return ddpExportRuleRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpExportRuleServiceImpl.saveDdpExportRule(DdpExportRule ddpExportRule) {
        ddpExportRuleRepository.save(ddpExportRule);
    }
    
    public DdpExportRule DdpExportRuleServiceImpl.updateDdpExportRule(DdpExportRule ddpExportRule) {
        return ddpExportRuleRepository.save(ddpExportRule);
    }
    
}
