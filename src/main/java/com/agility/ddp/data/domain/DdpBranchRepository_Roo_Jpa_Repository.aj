// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpBranch;
import com.agility.ddp.data.domain.DdpBranchRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpBranchRepository_Roo_Jpa_Repository {
    
    declare parents: DdpBranchRepository extends JpaRepository<DdpBranch, String>;
    
    declare parents: DdpBranchRepository extends JpaSpecificationExecutor<DdpBranch>;
    
    declare @type: DdpBranchRepository: @Repository;
    
}
