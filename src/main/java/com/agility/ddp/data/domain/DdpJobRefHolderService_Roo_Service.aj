// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpJobRefHolder;
import com.agility.ddp.data.domain.DdpJobRefHolderPK;
import com.agility.ddp.data.domain.DdpJobRefHolderService;
import java.util.List;

privileged aspect DdpJobRefHolderService_Roo_Service {
    
    public abstract long DdpJobRefHolderService.countAllDdpJobRefHolders();    
    public abstract void DdpJobRefHolderService.deleteDdpJobRefHolder(DdpJobRefHolder ddpJobRefHolder);    
    public abstract DdpJobRefHolder DdpJobRefHolderService.findDdpJobRefHolder(DdpJobRefHolderPK id);    
    public abstract List<DdpJobRefHolder> DdpJobRefHolderService.findAllDdpJobRefHolders();    
    public abstract List<DdpJobRefHolder> DdpJobRefHolderService.findDdpJobRefHolderEntries(int firstResult, int maxResults);    
    public abstract void DdpJobRefHolderService.saveDdpJobRefHolder(DdpJobRefHolder ddpJobRefHolder);    
    public abstract DdpJobRefHolder DdpJobRefHolderService.updateDdpJobRefHolder(DdpJobRefHolder ddpJobRefHolder);    
}
