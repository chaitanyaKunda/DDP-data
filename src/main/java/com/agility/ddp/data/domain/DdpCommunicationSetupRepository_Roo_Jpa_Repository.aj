// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommunicationSetup;
import com.agility.ddp.data.domain.DdpCommunicationSetupRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpCommunicationSetupRepository_Roo_Jpa_Repository {
    
    declare parents: DdpCommunicationSetupRepository extends JpaRepository<DdpCommunicationSetup, Integer>;
    
    declare parents: DdpCommunicationSetupRepository extends JpaSpecificationExecutor<DdpCommunicationSetup>;
    
    declare @type: DdpCommunicationSetupRepository: @Repository;
    
}
