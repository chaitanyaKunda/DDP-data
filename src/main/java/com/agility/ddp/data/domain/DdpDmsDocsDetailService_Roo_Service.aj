// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDmsDocsDetail;
import com.agility.ddp.data.domain.DdpDmsDocsDetailService;
import java.util.List;

privileged aspect DdpDmsDocsDetailService_Roo_Service {
    
    public abstract long DdpDmsDocsDetailService.countAllDdpDmsDocsDetails();    
    public abstract void DdpDmsDocsDetailService.deleteDdpDmsDocsDetail(DdpDmsDocsDetail ddpDmsDocsDetail);    
    public abstract DdpDmsDocsDetail DdpDmsDocsDetailService.findDdpDmsDocsDetail(Integer id);    
    public abstract List<DdpDmsDocsDetail> DdpDmsDocsDetailService.findAllDdpDmsDocsDetails();    
    public abstract List<DdpDmsDocsDetail> DdpDmsDocsDetailService.findDdpDmsDocsDetailEntries(int firstResult, int maxResults);    
    public abstract void DdpDmsDocsDetailService.saveDdpDmsDocsDetail(DdpDmsDocsDetail ddpDmsDocsDetail);    
    public abstract DdpDmsDocsDetail DdpDmsDocsDetailService.updateDdpDmsDocsDetail(DdpDmsDocsDetail ddpDmsDocsDetail);    
}
