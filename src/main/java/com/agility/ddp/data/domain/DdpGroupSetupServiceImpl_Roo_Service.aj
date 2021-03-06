// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGroupSetup;
import com.agility.ddp.data.domain.DdpGroupSetupRepository;
import com.agility.ddp.data.domain.DdpGroupSetupServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpGroupSetupServiceImpl_Roo_Service {
    
    declare @type: DdpGroupSetupServiceImpl: @Service;
    
    declare @type: DdpGroupSetupServiceImpl: @Transactional;
    
    @Autowired
    DdpGroupSetupRepository DdpGroupSetupServiceImpl.ddpGroupSetupRepository;
    
    public long DdpGroupSetupServiceImpl.countAllDdpGroupSetups() {
        return ddpGroupSetupRepository.count();
    }
    
    public void DdpGroupSetupServiceImpl.deleteDdpGroupSetup(DdpGroupSetup ddpGroupSetup) {
        ddpGroupSetupRepository.delete(ddpGroupSetup);
    }
    
    public DdpGroupSetup DdpGroupSetupServiceImpl.findDdpGroupSetup(Integer id) {
        return ddpGroupSetupRepository.findOne(id);
    }
    
    public List<DdpGroupSetup> DdpGroupSetupServiceImpl.findAllDdpGroupSetups() {
        return ddpGroupSetupRepository.findAll();
    }
    
    public List<DdpGroupSetup> DdpGroupSetupServiceImpl.findDdpGroupSetupEntries(int firstResult, int maxResults) {
        return ddpGroupSetupRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpGroupSetupServiceImpl.saveDdpGroupSetup(DdpGroupSetup ddpGroupSetup) {
        ddpGroupSetupRepository.save(ddpGroupSetup);
    }
    
    public DdpGroupSetup DdpGroupSetupServiceImpl.updateDdpGroupSetup(DdpGroupSetup ddpGroupSetup) {
        return ddpGroupSetupRepository.save(ddpGroupSetup);
    }
    
}
