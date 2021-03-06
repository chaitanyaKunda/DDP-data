// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpUser;
import com.agility.ddp.data.domain.DdpUserRepository;
import com.agility.ddp.data.domain.DdpUserServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpUserServiceImpl_Roo_Service {
    
    declare @type: DdpUserServiceImpl: @Service;
    
    declare @type: DdpUserServiceImpl: @Transactional;
    
    @Autowired
    DdpUserRepository DdpUserServiceImpl.ddpUserRepository;
    
    public long DdpUserServiceImpl.countAllDdpUsers() {
        return ddpUserRepository.count();
    }
    
    public void DdpUserServiceImpl.deleteDdpUser(DdpUser ddpUser) {
        ddpUserRepository.delete(ddpUser);
    }
    
    public DdpUser DdpUserServiceImpl.findDdpUser(Integer id) {
        return ddpUserRepository.findOne(id);
    }
    
    public List<DdpUser> DdpUserServiceImpl.findAllDdpUsers() {
        return ddpUserRepository.findAll();
    }
    
    public List<DdpUser> DdpUserServiceImpl.findDdpUserEntries(int firstResult, int maxResults) {
        return ddpUserRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpUserServiceImpl.saveDdpUser(DdpUser ddpUser) {
        ddpUserRepository.save(ddpUser);
    }
    
    public DdpUser DdpUserServiceImpl.updateDdpUser(DdpUser ddpUser) {
        return ddpUserRepository.save(ddpUser);
    }
    
}
