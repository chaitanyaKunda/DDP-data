// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpParty;
import com.agility.ddp.data.domain.DdpPartyRepository;
import com.agility.ddp.data.domain.DdpPartyServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpPartyServiceImpl_Roo_Service {
    
    declare @type: DdpPartyServiceImpl: @Service;
    
    declare @type: DdpPartyServiceImpl: @Transactional;
    
    @Autowired
    DdpPartyRepository DdpPartyServiceImpl.ddpPartyRepository;
    
    public long DdpPartyServiceImpl.countAllDdpPartys() {
        return ddpPartyRepository.count();
    }
    
    public void DdpPartyServiceImpl.deleteDdpParty(DdpParty ddpParty) {
        ddpPartyRepository.delete(ddpParty);
    }
    
    public DdpParty DdpPartyServiceImpl.findDdpParty(String id) {
        return ddpPartyRepository.findOne(id);
    }
    
    public List<DdpParty> DdpPartyServiceImpl.findAllDdpPartys() {
        return ddpPartyRepository.findAll();
    }
    
    public List<DdpParty> DdpPartyServiceImpl.findDdpPartyEntries(int firstResult, int maxResults) {
        return ddpPartyRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpPartyServiceImpl.saveDdpParty(DdpParty ddpParty) {
        ddpPartyRepository.save(ddpParty);
    }
    
    public DdpParty DdpPartyServiceImpl.updateDdpParty(DdpParty ddpParty) {
        return ddpPartyRepository.save(ddpParty);
    }
    
}
