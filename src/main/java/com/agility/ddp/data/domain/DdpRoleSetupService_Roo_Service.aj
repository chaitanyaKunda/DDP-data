// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRoleSetup;
import com.agility.ddp.data.domain.DdpRoleSetupService;
import java.util.List;

privileged aspect DdpRoleSetupService_Roo_Service {
    
    public abstract long DdpRoleSetupService.countAllDdpRoleSetups();    
    public abstract void DdpRoleSetupService.deleteDdpRoleSetup(DdpRoleSetup ddpRoleSetup);    
    public abstract DdpRoleSetup DdpRoleSetupService.findDdpRoleSetup(Integer id);    
    public abstract List<DdpRoleSetup> DdpRoleSetupService.findAllDdpRoleSetups();    
    public abstract List<DdpRoleSetup> DdpRoleSetupService.findDdpRoleSetupEntries(int firstResult, int maxResults);    
    public abstract void DdpRoleSetupService.saveDdpRoleSetup(DdpRoleSetup ddpRoleSetup);    
    public abstract DdpRoleSetup DdpRoleSetupService.updateDdpRoleSetup(DdpRoleSetup ddpRoleSetup);    
}