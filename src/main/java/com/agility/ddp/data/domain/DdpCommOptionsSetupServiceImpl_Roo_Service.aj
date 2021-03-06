// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommOptionsSetup;
import com.agility.ddp.data.domain.DdpCommOptionsSetupRepository;
import com.agility.ddp.data.domain.DdpCommOptionsSetupServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpCommOptionsSetupServiceImpl_Roo_Service {
    
    declare @type: DdpCommOptionsSetupServiceImpl: @Service;
    
    declare @type: DdpCommOptionsSetupServiceImpl: @Transactional;
    
    @Autowired
    DdpCommOptionsSetupRepository DdpCommOptionsSetupServiceImpl.ddpCommOptionsSetupRepository;
    
    public long DdpCommOptionsSetupServiceImpl.countAllDdpCommOptionsSetups() {
        return ddpCommOptionsSetupRepository.count();
    }
    
    public void DdpCommOptionsSetupServiceImpl.deleteDdpCommOptionsSetup(DdpCommOptionsSetup ddpCommOptionsSetup) {
        ddpCommOptionsSetupRepository.delete(ddpCommOptionsSetup);
    }
    
    public DdpCommOptionsSetup DdpCommOptionsSetupServiceImpl.findDdpCommOptionsSetup(Integer id) {
        return ddpCommOptionsSetupRepository.findOne(id);
    }
    
    public List<DdpCommOptionsSetup> DdpCommOptionsSetupServiceImpl.findAllDdpCommOptionsSetups() {
        return ddpCommOptionsSetupRepository.findAll();
    }
    
    public List<DdpCommOptionsSetup> DdpCommOptionsSetupServiceImpl.findDdpCommOptionsSetupEntries(int firstResult, int maxResults) {
        return ddpCommOptionsSetupRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpCommOptionsSetupServiceImpl.saveDdpCommOptionsSetup(DdpCommOptionsSetup ddpCommOptionsSetup) {
        ddpCommOptionsSetupRepository.save(ddpCommOptionsSetup);
    }
    
    public DdpCommOptionsSetup DdpCommOptionsSetupServiceImpl.updateDdpCommOptionsSetup(DdpCommOptionsSetup ddpCommOptionsSetup) {
        return ddpCommOptionsSetupRepository.save(ddpCommOptionsSetup);
    }
    
}
