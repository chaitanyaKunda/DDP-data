// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDoctype;
import com.agility.ddp.data.domain.DdpDoctypeService;
import java.util.List;

privileged aspect DdpDoctypeService_Roo_Service {
    
    public abstract long DdpDoctypeService.countAllDdpDoctypes();    
    public abstract void DdpDoctypeService.deleteDdpDoctype(DdpDoctype ddpDoctype);    
    public abstract DdpDoctype DdpDoctypeService.findDdpDoctype(String id);    
    public abstract List<DdpDoctype> DdpDoctypeService.findAllDdpDoctypes();    
    public abstract List<DdpDoctype> DdpDoctypeService.findDdpDoctypeEntries(int firstResult, int maxResults);    
    public abstract void DdpDoctypeService.saveDdpDoctype(DdpDoctype ddpDoctype);    
    public abstract DdpDoctype DdpDoctypeService.updateDdpDoctype(DdpDoctype ddpDoctype);    
}