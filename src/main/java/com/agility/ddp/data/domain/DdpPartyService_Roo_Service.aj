// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpParty;
import com.agility.ddp.data.domain.DdpPartyService;
import java.util.List;

privileged aspect DdpPartyService_Roo_Service {
    
    public abstract long DdpPartyService.countAllDdpPartys();    
    public abstract void DdpPartyService.deleteDdpParty(DdpParty ddpParty);    
    public abstract DdpParty DdpPartyService.findDdpParty(String id);    
    public abstract List<DdpParty> DdpPartyService.findAllDdpPartys();    
    public abstract List<DdpParty> DdpPartyService.findDdpPartyEntries(int firstResult, int maxResults);    
    public abstract void DdpPartyService.saveDdpParty(DdpParty ddpParty);    
    public abstract DdpParty DdpPartyService.updateDdpParty(DdpParty ddpParty);    
}
