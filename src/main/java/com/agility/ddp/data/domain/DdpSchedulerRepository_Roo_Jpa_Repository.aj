// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpScheduler;
import com.agility.ddp.data.domain.DdpSchedulerRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpSchedulerRepository_Roo_Jpa_Repository {
    
    declare parents: DdpSchedulerRepository extends JpaRepository<DdpScheduler, Integer>;
    
    declare parents: DdpSchedulerRepository extends JpaSpecificationExecutor<DdpScheduler>;
    
    declare @type: DdpSchedulerRepository: @Repository;
    
}
