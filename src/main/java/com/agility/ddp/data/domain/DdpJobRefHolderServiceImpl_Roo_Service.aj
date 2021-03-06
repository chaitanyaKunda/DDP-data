// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpJobRefHolder;
import com.agility.ddp.data.domain.DdpJobRefHolderPK;
import com.agility.ddp.data.domain.DdpJobRefHolderRepository;
import com.agility.ddp.data.domain.DdpJobRefHolderServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpJobRefHolderServiceImpl_Roo_Service {
    
    declare @type: DdpJobRefHolderServiceImpl: @Service;
    
    declare @type: DdpJobRefHolderServiceImpl: @Transactional;
    
    @Autowired
    DdpJobRefHolderRepository DdpJobRefHolderServiceImpl.ddpJobRefHolderRepository;
    
    public long DdpJobRefHolderServiceImpl.countAllDdpJobRefHolders() {
        return ddpJobRefHolderRepository.count();
    }
    
    public void DdpJobRefHolderServiceImpl.deleteDdpJobRefHolder(DdpJobRefHolder ddpJobRefHolder) {
        ddpJobRefHolderRepository.delete(ddpJobRefHolder);
    }
    
    public DdpJobRefHolder DdpJobRefHolderServiceImpl.findDdpJobRefHolder(DdpJobRefHolderPK id) {
        return ddpJobRefHolderRepository.findOne(id);
    }
    
    public List<DdpJobRefHolder> DdpJobRefHolderServiceImpl.findAllDdpJobRefHolders() {
        return ddpJobRefHolderRepository.findAll();
    }
    
    public List<DdpJobRefHolder> DdpJobRefHolderServiceImpl.findDdpJobRefHolderEntries(int firstResult, int maxResults) {
        return ddpJobRefHolderRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpJobRefHolderServiceImpl.saveDdpJobRefHolder(DdpJobRefHolder ddpJobRefHolder) {
        ddpJobRefHolderRepository.save(ddpJobRefHolder);
    }
    
    public DdpJobRefHolder DdpJobRefHolderServiceImpl.updateDdpJobRefHolder(DdpJobRefHolder ddpJobRefHolder) {
        return ddpJobRefHolderRepository.save(ddpJobRefHolder);
    }
    
}
