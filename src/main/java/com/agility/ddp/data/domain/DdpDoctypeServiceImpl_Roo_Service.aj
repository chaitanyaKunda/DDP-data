// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDoctype;
import com.agility.ddp.data.domain.DdpDoctypeRepository;
import com.agility.ddp.data.domain.DdpDoctypeServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpDoctypeServiceImpl_Roo_Service {
    
    declare @type: DdpDoctypeServiceImpl: @Service;
    
    declare @type: DdpDoctypeServiceImpl: @Transactional;
    
    @Autowired
    DdpDoctypeRepository DdpDoctypeServiceImpl.ddpDoctypeRepository;
    
    public long DdpDoctypeServiceImpl.countAllDdpDoctypes() {
        return ddpDoctypeRepository.count();
    }
    
    public void DdpDoctypeServiceImpl.deleteDdpDoctype(DdpDoctype ddpDoctype) {
        ddpDoctypeRepository.delete(ddpDoctype);
    }
    
    public DdpDoctype DdpDoctypeServiceImpl.findDdpDoctype(String id) {
        return ddpDoctypeRepository.findOne(id);
    }
    
    public List<DdpDoctype> DdpDoctypeServiceImpl.findAllDdpDoctypes() {
        return ddpDoctypeRepository.findAll();
    }
    
    public List<DdpDoctype> DdpDoctypeServiceImpl.findDdpDoctypeEntries(int firstResult, int maxResults) {
        return ddpDoctypeRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpDoctypeServiceImpl.saveDdpDoctype(DdpDoctype ddpDoctype) {
        ddpDoctypeRepository.save(ddpDoctype);
    }
    
    public DdpDoctype DdpDoctypeServiceImpl.updateDdpDoctype(DdpDoctype ddpDoctype) {
        return ddpDoctypeRepository.save(ddpDoctype);
    }
    
}
