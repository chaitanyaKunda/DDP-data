// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpMultiEmails;
import com.agility.ddp.data.domain.DdpMultiEmailsRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpMultiEmailsRepository_Roo_Jpa_Repository {
    
    declare parents: DdpMultiEmailsRepository extends JpaRepository<DdpMultiEmails, Integer>;
    
    declare parents: DdpMultiEmailsRepository extends JpaSpecificationExecutor<DdpMultiEmails>;
    
    declare @type: DdpMultiEmailsRepository: @Repository;
    
}
