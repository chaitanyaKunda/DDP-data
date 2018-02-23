// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommUnc;
import com.agility.ddp.data.domain.DdpCommUncRepository;
import com.agility.ddp.data.domain.DdpCommUncServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpCommUncServiceImpl_Roo_Service {
    
    declare @type: DdpCommUncServiceImpl: @Service;
    
    declare @type: DdpCommUncServiceImpl: @Transactional;
    
    @Autowired
    DdpCommUncRepository DdpCommUncServiceImpl.ddpCommUncRepository;
    
    public long DdpCommUncServiceImpl.countAllDdpCommUncs() {
        return ddpCommUncRepository.count();
    }
    
    public void DdpCommUncServiceImpl.deleteDdpCommUnc(DdpCommUnc ddpCommUnc) {
        ddpCommUncRepository.delete(ddpCommUnc);
    }
    
    public DdpCommUnc DdpCommUncServiceImpl.findDdpCommUnc(Long id) {
        return ddpCommUncRepository.findOne(id);
    }
    
    public List<DdpCommUnc> DdpCommUncServiceImpl.findAllDdpCommUncs() {
        return ddpCommUncRepository.findAll();
    }
    
    public List<DdpCommUnc> DdpCommUncServiceImpl.findDdpCommUncEntries(int firstResult, int maxResults) {
        return ddpCommUncRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpCommUncServiceImpl.saveDdpCommUnc(DdpCommUnc ddpCommUnc) {
        ddpCommUncRepository.save(ddpCommUnc);
    }
    
    public DdpCommUnc DdpCommUncServiceImpl.updateDdpCommUnc(DdpCommUnc ddpCommUnc) {
        return ddpCommUncRepository.save(ddpCommUnc);
    }
    
}
