// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportQueryUi;
import com.agility.ddp.data.domain.DdpExportQueryUiService;
import java.util.List;

privileged aspect DdpExportQueryUiService_Roo_Service {
    
    public abstract long DdpExportQueryUiService.countAllDdpExportQueryUis();    
    public abstract void DdpExportQueryUiService.deleteDdpExportQueryUi(DdpExportQueryUi ddpExportQueryUi);    
    public abstract DdpExportQueryUi DdpExportQueryUiService.findDdpExportQueryUi(Integer id);    
    public abstract List<DdpExportQueryUi> DdpExportQueryUiService.findAllDdpExportQueryUis();    
    public abstract List<DdpExportQueryUi> DdpExportQueryUiService.findDdpExportQueryUiEntries(int firstResult, int maxResults);    
    public abstract void DdpExportQueryUiService.saveDdpExportQueryUi(DdpExportQueryUi ddpExportQueryUi);    
    public abstract DdpExportQueryUi DdpExportQueryUiService.updateDdpExportQueryUi(DdpExportQueryUi ddpExportQueryUi);    
}
