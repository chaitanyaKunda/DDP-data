// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpNotification;
import com.agility.ddp.data.domain.DdpNotificationRepository;
import com.agility.ddp.data.domain.DdpNotificationServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpNotificationServiceImpl_Roo_Service {
    
    declare @type: DdpNotificationServiceImpl: @Service;
    
    declare @type: DdpNotificationServiceImpl: @Transactional;
    
    @Autowired
    DdpNotificationRepository DdpNotificationServiceImpl.ddpNotificationRepository;
    
    public long DdpNotificationServiceImpl.countAllDdpNotifications() {
        return ddpNotificationRepository.count();
    }
    
    public void DdpNotificationServiceImpl.deleteDdpNotification(DdpNotification ddpNotification) {
        ddpNotificationRepository.delete(ddpNotification);
    }
    
    public DdpNotification DdpNotificationServiceImpl.findDdpNotification(Integer id) {
        return ddpNotificationRepository.findOne(id);
    }
    
    public List<DdpNotification> DdpNotificationServiceImpl.findAllDdpNotifications() {
        return ddpNotificationRepository.findAll();
    }
    
    public List<DdpNotification> DdpNotificationServiceImpl.findDdpNotificationEntries(int firstResult, int maxResults) {
        return ddpNotificationRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DdpNotificationServiceImpl.saveDdpNotification(DdpNotification ddpNotification) {
        ddpNotificationRepository.save(ddpNotification);
    }
    
    public DdpNotification DdpNotificationServiceImpl.updateDdpNotification(DdpNotification ddpNotification) {
        return ddpNotificationRepository.save(ddpNotification);
    }
    
}