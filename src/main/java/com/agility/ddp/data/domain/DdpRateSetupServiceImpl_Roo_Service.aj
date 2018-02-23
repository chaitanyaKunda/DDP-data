// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRateSetup;
import com.agility.ddp.data.domain.DdpRateSetupRepository;
import com.agility.ddp.data.domain.DdpRateSetupServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpRateSetupServiceImpl_Roo_Service {
    
    declare @type: DdpRateSetupServiceImpl: @Service;
    
    declare @type: DdpRateSetupServiceImpl: @Transactional;
    
    @Autowired
    DdpRateSetupRepository DdpRateSetupServiceImpl.ddpRateSetupRepository;
    
    public long DdpRateSetupServiceImpl.countAllDdpRateSetups() {
        return ddpRateSetupRepository.count();
    }
    
    public void DdpRateSetupServiceImpl.deleteDdpRateSetup(DdpRateSetup ddpRateSetup) {
        ddpRateSetupRepository.delete(ddpRateSetup);
    }
    
    public DdpRateSetup DdpRateSetupServiceImpl.findDdpRateSetup(Integer id) {
        return ddpRateSetupRepository.findOne(id);
    }
    
    public List<DdpRateSetup> DdpRateSetupServiceImpl.findAllDdpRateSetups() {
        return ddpRateSetupRepository.findAll();
    }
    
    public List<DdpRateSetup> DdpRateSetupServiceImpl.findDdpRateSetupEntries(int firstResult, int maxResults) {
        return ddpRateSetupRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpRateSetupServiceImpl.saveDdpRateSetup(DdpRateSetup ddpRateSetup) {
        ddpRateSetupRepository.save(ddpRateSetup);
    }
    
    public DdpRateSetup DdpRateSetupServiceImpl.updateDdpRateSetup(DdpRateSetup ddpRateSetup) {
        return ddpRateSetupRepository.save(ddpRateSetup);
    }
    
}
