// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDocnameConv;
import com.agility.ddp.data.domain.DdpDocnameConvRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpDocnameConvRepository_Roo_Jpa_Repository {
    
    declare parents: DdpDocnameConvRepository extends JpaRepository<DdpDocnameConv, Integer>;
    
    declare parents: DdpDocnameConvRepository extends JpaSpecificationExecutor<DdpDocnameConv>;
    
    declare @type: DdpDocnameConvRepository: @Repository;
    
}
