// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDmsDocProp;
import com.agility.ddp.data.domain.DdpDmsDocPropPK;
import com.agility.ddp.data.domain.DdpDmsDocPropRepository;
import com.agility.ddp.data.domain.DdpDmsDocPropServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpDmsDocPropServiceImpl_Roo_Service {
    
    declare @type: DdpDmsDocPropServiceImpl: @Service;
    
    declare @type: DdpDmsDocPropServiceImpl: @Transactional;
    
    @Autowired
    DdpDmsDocPropRepository DdpDmsDocPropServiceImpl.ddpDmsDocPropRepository;
    
    public long DdpDmsDocPropServiceImpl.countAllDdpDmsDocProps() {
        return ddpDmsDocPropRepository.count();
    }
    
    public void DdpDmsDocPropServiceImpl.deleteDdpDmsDocProp(DdpDmsDocProp ddpDmsDocProp) {
        ddpDmsDocPropRepository.delete(ddpDmsDocProp);
    }
    
    public DdpDmsDocProp DdpDmsDocPropServiceImpl.findDdpDmsDocProp(DdpDmsDocPropPK id) {
        return ddpDmsDocPropRepository.findOne(id);
    }
    
    public List<DdpDmsDocProp> DdpDmsDocPropServiceImpl.findAllDdpDmsDocProps() {
        return ddpDmsDocPropRepository.findAll();
    }
    
    public List<DdpDmsDocProp> DdpDmsDocPropServiceImpl.findDdpDmsDocPropEntries(int firstResult, int maxResults) {
        return ddpDmsDocPropRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpDmsDocPropServiceImpl.saveDdpDmsDocProp(DdpDmsDocProp ddpDmsDocProp) {
        ddpDmsDocPropRepository.save(ddpDmsDocProp);
    }
    
    public DdpDmsDocProp DdpDmsDocPropServiceImpl.updateDdpDmsDocProp(DdpDmsDocProp ddpDmsDocProp) {
        return ddpDmsDocPropRepository.save(ddpDmsDocProp);
    }
    
}