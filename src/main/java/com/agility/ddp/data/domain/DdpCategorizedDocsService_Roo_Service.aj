// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedDocs;
import com.agility.ddp.data.domain.DdpCategorizedDocsService;
import java.util.List;

privileged aspect DdpCategorizedDocsService_Roo_Service {
    
    public abstract long DdpCategorizedDocsService.countAllDdpCategorizedDocses();    
    public abstract void DdpCategorizedDocsService.deleteDdpCategorizedDocs(DdpCategorizedDocs ddpCategorizedDocs);    
    public abstract DdpCategorizedDocs DdpCategorizedDocsService.findDdpCategorizedDocs(Integer id);    
    public abstract List<DdpCategorizedDocs> DdpCategorizedDocsService.findAllDdpCategorizedDocses();    
    public abstract List<DdpCategorizedDocs> DdpCategorizedDocsService.findDdpCategorizedDocsEntries(int firstResult, int maxResults);    
    public abstract void DdpCategorizedDocsService.saveDdpCategorizedDocs(DdpCategorizedDocs ddpCategorizedDocs);    
    public abstract DdpCategorizedDocs DdpCategorizedDocsService.updateDdpCategorizedDocs(DdpCategorizedDocs ddpCategorizedDocs);    
}
