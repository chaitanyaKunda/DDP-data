// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGenSystem;
import com.agility.ddp.data.domain.DdpGenSystemService;
import java.util.List;

privileged aspect DdpGenSystemService_Roo_Service {
    
    public abstract long DdpGenSystemService.countAllDdpGenSystems();    
    public abstract void DdpGenSystemService.deleteDdpGenSystem(DdpGenSystem ddpGenSystem);    
    public abstract DdpGenSystem DdpGenSystemService.findDdpGenSystem(String id);    
    public abstract List<DdpGenSystem> DdpGenSystemService.findAllDdpGenSystems();    
    public abstract List<DdpGenSystem> DdpGenSystemService.findDdpGenSystemEntries(int firstResult, int maxResults);    
    public abstract void DdpGenSystemService.saveDdpGenSystem(DdpGenSystem ddpGenSystem);    
    public abstract DdpGenSystem DdpGenSystemService.updateDdpGenSystem(DdpGenSystem ddpGenSystem);    
}
