// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportVersionLkp;
import com.agility.ddp.data.domain.DdpExportVersionLkpPK;
import com.agility.ddp.data.domain.DdpExportVersionLkpService;
import java.util.List;

privileged aspect DdpExportVersionLkpService_Roo_Service {
    
    public abstract long DdpExportVersionLkpService.countAllDdpExportVersionLkps();    
    public abstract void DdpExportVersionLkpService.deleteDdpExportVersionLkp(DdpExportVersionLkp ddpExportVersionLkp);    
    public abstract DdpExportVersionLkp DdpExportVersionLkpService.findDdpExportVersionLkp(DdpExportVersionLkpPK id);    
    public abstract List<DdpExportVersionLkp> DdpExportVersionLkpService.findAllDdpExportVersionLkps();    
    public abstract List<DdpExportVersionLkp> DdpExportVersionLkpService.findDdpExportVersionLkpEntries(int firstResult, int maxResults);    
    public abstract void DdpExportVersionLkpService.saveDdpExportVersionLkp(DdpExportVersionLkp ddpExportVersionLkp);    
    public abstract DdpExportVersionLkp DdpExportVersionLkpService.updateDdpExportVersionLkp(DdpExportVersionLkp ddpExportVersionLkp);    
}