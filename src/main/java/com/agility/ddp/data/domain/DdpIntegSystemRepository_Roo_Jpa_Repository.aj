// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpIntegSystem;
import com.agility.ddp.data.domain.DdpIntegSystemRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpIntegSystemRepository_Roo_Jpa_Repository {
    
    declare parents: DdpIntegSystemRepository extends JpaRepository<DdpIntegSystem, String>;
    
    declare parents: DdpIntegSystemRepository extends JpaSpecificationExecutor<DdpIntegSystem>;
    
    declare @type: DdpIntegSystemRepository: @Repository;
    
}