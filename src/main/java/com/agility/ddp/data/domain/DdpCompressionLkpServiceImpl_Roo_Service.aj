// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCompressionLkp;
import com.agility.ddp.data.domain.DdpCompressionLkpRepository;
import com.agility.ddp.data.domain.DdpCompressionLkpServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpCompressionLkpServiceImpl_Roo_Service {
    
    declare @type: DdpCompressionLkpServiceImpl: @Service;
    
    declare @type: DdpCompressionLkpServiceImpl: @Transactional;
    
    @Autowired
    DdpCompressionLkpRepository DdpCompressionLkpServiceImpl.ddpCompressionLkpRepository;
    
    public long DdpCompressionLkpServiceImpl.countAllDdpCompressionLkps() {
        return ddpCompressionLkpRepository.count();
    }
    
    public void DdpCompressionLkpServiceImpl.deleteDdpCompressionLkp(DdpCompressionLkp ddpCompressionLkp) {
        ddpCompressionLkpRepository.delete(ddpCompressionLkp);
    }
    
    public DdpCompressionLkp DdpCompressionLkpServiceImpl.findDdpCompressionLkp(Integer id) {
        return ddpCompressionLkpRepository.findOne(id);
    }
    
    public List<DdpCompressionLkp> DdpCompressionLkpServiceImpl.findAllDdpCompressionLkps() {
        return ddpCompressionLkpRepository.findAll();
    }
    
    public List<DdpCompressionLkp> DdpCompressionLkpServiceImpl.findDdpCompressionLkpEntries(int firstResult, int maxResults) {
        return ddpCompressionLkpRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpCompressionLkpServiceImpl.saveDdpCompressionLkp(DdpCompressionLkp ddpCompressionLkp) {
        ddpCompressionLkpRepository.save(ddpCompressionLkp);
    }
    
    public DdpCompressionLkp DdpCompressionLkpServiceImpl.updateDdpCompressionLkp(DdpCompressionLkp ddpCompressionLkp) {
        return ddpCompressionLkpRepository.save(ddpCompressionLkp);
    }
    
}
