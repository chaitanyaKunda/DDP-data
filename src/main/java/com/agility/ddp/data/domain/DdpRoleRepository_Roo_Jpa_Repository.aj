// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRole;
import com.agility.ddp.data.domain.DdpRoleRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpRoleRepository_Roo_Jpa_Repository {
    
    declare parents: DdpRoleRepository extends JpaRepository<DdpRole, Integer>;
    
    declare parents: DdpRoleRepository extends JpaSpecificationExecutor<DdpRole>;
    
    declare @type: DdpRoleRepository: @Repository;
    
}
