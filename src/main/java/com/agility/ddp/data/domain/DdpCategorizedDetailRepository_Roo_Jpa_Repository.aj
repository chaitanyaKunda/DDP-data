// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedDetail;
import com.agility.ddp.data.domain.DdpCategorizedDetailRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpCategorizedDetailRepository_Roo_Jpa_Repository {
    
    declare parents: DdpCategorizedDetailRepository extends JpaRepository<DdpCategorizedDetail, Integer>;
    
    declare parents: DdpCategorizedDetailRepository extends JpaSpecificationExecutor<DdpCategorizedDetail>;
    
    declare @type: DdpCategorizedDetailRepository: @Repository;
    
}
