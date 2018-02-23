// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRate;
import com.agility.ddp.data.domain.DdpRateService;
import java.util.List;

privileged aspect DdpRateService_Roo_Service {
    
    public abstract long DdpRateService.countAllDdpRates();    
    public abstract void DdpRateService.deleteDdpRate(DdpRate ddpRate);    
    public abstract DdpRate DdpRateService.findDdpRate(Integer id);    
    public abstract List<DdpRate> DdpRateService.findAllDdpRates();    
    public abstract List<DdpRate> DdpRateService.findDdpRateEntries(int firstResult, int maxResults);    
    public abstract void DdpRateService.saveDdpRate(DdpRate ddpRate);    
    public abstract DdpRate DdpRateService.updateDdpRate(DdpRate ddpRate);    
}