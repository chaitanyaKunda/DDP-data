// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpPmService;
import com.agility.ddp.data.domain.DdpPmServiceRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpPmServiceRepository_Roo_Jpa_Repository {
    
    declare parents: DdpPmServiceRepository extends JpaRepository<DdpPmService, Integer>;
    
    declare parents: DdpPmServiceRepository extends JpaSpecificationExecutor<DdpPmService>;
    
    declare @type: DdpPmServiceRepository: @Repository;
    
}
