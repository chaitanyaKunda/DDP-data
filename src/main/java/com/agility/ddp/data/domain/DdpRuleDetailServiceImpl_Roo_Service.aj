// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRuleDetail;
import com.agility.ddp.data.domain.DdpRuleDetailRepository;
import com.agility.ddp.data.domain.DdpRuleDetailServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpRuleDetailServiceImpl_Roo_Service {
    
    declare @type: DdpRuleDetailServiceImpl: @Service;
    
    declare @type: DdpRuleDetailServiceImpl: @Transactional;
    
    @Autowired
    DdpRuleDetailRepository DdpRuleDetailServiceImpl.ddpRuleDetailRepository;
    
    public long DdpRuleDetailServiceImpl.countAllDdpRuleDetails() {
        return ddpRuleDetailRepository.count();
    }
    
    public void DdpRuleDetailServiceImpl.deleteDdpRuleDetail(DdpRuleDetail ddpRuleDetail) {
        ddpRuleDetailRepository.delete(ddpRuleDetail);
    }
    
    public DdpRuleDetail DdpRuleDetailServiceImpl.findDdpRuleDetail(Integer id) {
        return ddpRuleDetailRepository.findOne(id);
    }
    
    public List<DdpRuleDetail> DdpRuleDetailServiceImpl.findAllDdpRuleDetails() {
        return ddpRuleDetailRepository.findAll();
    }
    
    public List<DdpRuleDetail> DdpRuleDetailServiceImpl.findDdpRuleDetailEntries(int firstResult, int maxResults) {
        return ddpRuleDetailRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpRuleDetailServiceImpl.saveDdpRuleDetail(DdpRuleDetail ddpRuleDetail) {
        ddpRuleDetailRepository.save(ddpRuleDetail);
    }
    
    public DdpRuleDetail DdpRuleDetailServiceImpl.updateDdpRuleDetail(DdpRuleDetail ddpRuleDetail) {
        return ddpRuleDetailRepository.save(ddpRuleDetail);
    }
    
}
