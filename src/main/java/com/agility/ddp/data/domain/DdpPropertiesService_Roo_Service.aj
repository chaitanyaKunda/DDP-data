// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpProperties;
import com.agility.ddp.data.domain.DdpPropertiesPK;
import com.agility.ddp.data.domain.DdpPropertiesService;
import java.util.List;

privileged aspect DdpPropertiesService_Roo_Service {
    
    public abstract long DdpPropertiesService.countAllDdpPropertieses();    
    public abstract void DdpPropertiesService.deleteDdpProperties(DdpProperties ddpProperties);    
    public abstract DdpProperties DdpPropertiesService.findDdpProperties(DdpPropertiesPK id);    
    public abstract List<DdpProperties> DdpPropertiesService.findAllDdpPropertieses();    
    public abstract List<DdpProperties> DdpPropertiesService.findDdpPropertiesEntries(int firstResult, int maxResults);    
    public abstract void DdpPropertiesService.saveDdpProperties(DdpProperties ddpProperties);    
    public abstract DdpProperties DdpPropertiesService.updateDdpProperties(DdpProperties ddpProperties);    
}
