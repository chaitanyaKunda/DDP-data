// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpParty;
import com.agility.ddp.data.domain.DdpPartyRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpPartyRepository_Roo_Jpa_Repository {
    
    declare parents: DdpPartyRepository extends JpaRepository<DdpParty, String>;
    
    declare parents: DdpPartyRepository extends JpaSpecificationExecutor<DdpParty>;
    
    declare @type: DdpPartyRepository: @Repository;
    
}
