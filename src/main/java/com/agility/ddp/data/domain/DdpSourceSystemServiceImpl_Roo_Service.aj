// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpSourceSystem;
import com.agility.ddp.data.domain.DdpSourceSystemRepository;
import com.agility.ddp.data.domain.DdpSourceSystemServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpSourceSystemServiceImpl_Roo_Service {
    
    declare @type: DdpSourceSystemServiceImpl: @Service;
    
    declare @type: DdpSourceSystemServiceImpl: @Transactional;
    
    @Autowired
    DdpSourceSystemRepository DdpSourceSystemServiceImpl.ddpSourceSystemRepository;
    
    public long DdpSourceSystemServiceImpl.countAllDdpSourceSystems() {
        return ddpSourceSystemRepository.count();
    }
    
    public void DdpSourceSystemServiceImpl.deleteDdpSourceSystem(DdpSourceSystem ddpSourceSystem) {
        ddpSourceSystemRepository.delete(ddpSourceSystem);
    }
    
    public DdpSourceSystem DdpSourceSystemServiceImpl.findDdpSourceSystem(String id) {
        return ddpSourceSystemRepository.findOne(id);
    }
    
    public List<DdpSourceSystem> DdpSourceSystemServiceImpl.findAllDdpSourceSystems() {
        return ddpSourceSystemRepository.findAll();
    }
    
    public List<DdpSourceSystem> DdpSourceSystemServiceImpl.findDdpSourceSystemEntries(int firstResult, int maxResults) {
        return ddpSourceSystemRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpSourceSystemServiceImpl.saveDdpSourceSystem(DdpSourceSystem ddpSourceSystem) {
        ddpSourceSystemRepository.save(ddpSourceSystem);
    }
    
    public DdpSourceSystem DdpSourceSystemServiceImpl.updateDdpSourceSystem(DdpSourceSystem ddpSourceSystem) {
        return ddpSourceSystemRepository.save(ddpSourceSystem);
    }
    
}